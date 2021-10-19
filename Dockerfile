FROM nginx:alpine

WORKDIR /var/www
RUN mkdir -p "/var/log/nginx"
RUN chmod -R a+w /var/log/nginx


COPY nginx.conf /etc/nginx/nginx.conf
COPY empty /etc/nginx/conf.d/default.conf
COPY nginx-default.conf /etc/nginx/sites-available/default.conf
COPY index.html ./index.html


CMD ["nginx"]
EXPOSE 80

