FROM nginx:latest
MAINTAINER <ram@gmail.com>
RUN apt-get update && apt-get install -y \
	net-tools \
	telnet
ENV MYVAR DEVOPS
EXPOSE 8090
CMD ["/etc/init.d/nginx start"]
