FROM nginx:alpine
COPY build_web/ /usr/share/nginx/html
COPY nginx.conf /etc/nginx/conf.d/default.conf
