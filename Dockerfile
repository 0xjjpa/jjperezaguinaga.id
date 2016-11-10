# Initial version
# docker build -t jjperezaguinaga/jjperezaguinaga.id
# docker run -d -p 80:8080 --name webpage jjperezaguinaga/jjperezaguinaga.id
FROM gliderlabs/alpine:3.1
MAINTAINER "Jose Aguinaga <me+docker@jjperezaguinaga.com>"
RUN apk-install python

ADD . /opt/www
WORKDIR /opt/www
USER daemon
CMD python -m SimpleHTTPServer 8080
EXPOSE 8080
