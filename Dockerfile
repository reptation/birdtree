FROM nginx
COPY /*.html /usr/share/nginx/html/
COPY /thebirdtree.com.conf /etc/nginx/sites-enabled
