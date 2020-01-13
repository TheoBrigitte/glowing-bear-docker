FROM nginx:mainline-alpine
 
RUN apk add --no-cache --update git && rm -rf /var/cache/apk/*;
RUN rm -rf /usr/share/nginx/html/ && \
    git clone https://github.com/glowing-bear/glowing-bear.git /usr/share/nginx/html/;
CMD nginx -g "daemon off;"
