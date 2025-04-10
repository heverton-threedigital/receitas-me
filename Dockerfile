# Etapa 1: Builder
FROM dart:stable AS build

# Instalações básicas
RUN apt-get update && apt-get install -y git unzip xz-utils curl libglu1-mesa

# Instala o Flutter
RUN git clone https://github.com/flutter/flutter.git /flutter
ENV PATH="/flutter/bin:/flutter/bin/cache/dart-sdk/bin:${PATH}"

# Prepara o Flutter
RUN flutter doctor
RUN flutter --version

# Copia o projeto
WORKDIR /app
COPY . .

# Resolve dependências
RUN flutter pub get

# Faz o build web
RUN flutter build web --web-renderer html --release

# Etapa 2: Image final só com os arquivos do build
FROM dart:stable AS runtime

# Instala servidor simples
RUN dart pub global activate dhttpd

# Define a porta
EXPOSE 8080

# Copia os arquivos do build da etapa anterior
WORKDIR /app
COPY --from=build /app/build/web .

# Comando de início
CMD ["dhttpd", "--path", ".", "--port", "8080"]
