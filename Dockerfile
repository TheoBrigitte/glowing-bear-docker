FROM nginx:mainline-alpine
 
RUN apk add --no-cache --update git
RUN rm -rf /usr/share/nginx/html/ && \
    git clone https://github.com/glowing-bear/glowing-bear.git /usr/share/nginx/html/ &&\
    rm -rf /usr/share/nginx/htlm/.git
EXPOSE 80
CMD nginx -g "daemon off;"
