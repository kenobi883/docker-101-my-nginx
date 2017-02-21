FROM alpine:3.5
RUN apk add --no-cache nginx
RUN mkdir -p /run/nginx
EXPOSE 80
COPY site.conf /etc/nginx/conf.d/default.conf
COPY . /var/www/html
CMD ["nginx", "-g", "daemon off;"]
