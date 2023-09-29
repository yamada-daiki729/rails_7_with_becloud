FROM --platform=linux/x86_64 nginx:1.25.2

RUN rm -f /etc/nginx/conf.d/*

COPY ./nginx.conf /etc/nginx/conf.d/app.conf

CMD /usr/sbin/nginx -g 'daemon off;' -c /etc/nginx/nginx.conf
