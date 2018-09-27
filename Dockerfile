FROM nginx
COPY /*.html /usr/share/nginx/html/
COPY /thebirdtree.com.conf /etc/nginx/sites-enabled
ADD images /usr/share/nginx/html/images
COPY /*.js /usr/share/nginx/html/
