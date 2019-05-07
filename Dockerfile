FROM mdillon/postgis
COPY init/*.* /docker-entrypoint-initdb.d/
# FROM nginx
# COPY html /usr/share/nginx/html