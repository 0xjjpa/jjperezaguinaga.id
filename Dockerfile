# Initial version
# docker run -d -p 80:8080 --name webpage jjperezaguinaga/webserver 
FROM gliderlabs/alpine:3.4
MAINTAINER "Jose Aguinaga <me+docker@jjperezaguinaga.com>"
RUN apk-install python

ADD build /opt/www
WORKDIR /opt/www
USER daemon
CMD python -m SimpleHTTPServer 8080
EXPOSE 8080
