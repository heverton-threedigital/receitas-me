# Usa a imagem oficial do Nginx como base
FROM nginx:alpine

# Remove a configuração padrão do Nginx
RUN rm /etc/nginx/conf.d/default.conf

# Copia sua build Flutter Web para a pasta padrão do Nginx
COPY build_web/ /usr/share/nginx/html

# Copia a nova configuração que suporta SPA
COPY nginx.conf /etc/nginx/conf.d/default.conf
