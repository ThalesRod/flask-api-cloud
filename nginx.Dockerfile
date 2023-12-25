FROM nginx:1.25.3-alpine

RUN rm /etc/nginx/nginx.conf /etc/nginx/conf.d/default.conf

COPY nginx_config.conf /etc/nginx/nginx.conf