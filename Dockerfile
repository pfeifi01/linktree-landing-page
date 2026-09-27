FROM nginx:alpine

COPY index.html favicon.svg /usr/share/nginx/html/

EXPOSE 80
