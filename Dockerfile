FROM nginx:alpine

WORKDIR /var/www
RUN mkdir -p "/var/log/nginx"
RUN chmod -R a+w /var/log/nginx

COPY index.html ./index.html


CMD ["nginx"]
EXPOSE 80

