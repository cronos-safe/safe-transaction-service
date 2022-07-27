FROM nginx:1.21.3-alpine

RUN apk upgrade --update-cache --available && rm -rf /var/cache/apk/*

COPY nginx.conf /etc/nginx/nginx.conf

RUN echo `date` >/usr/share/nginx/html/version.txt

STOPSIGNAL SIGTERM

CMD ["nginx", "-g", "daemon off;"]
