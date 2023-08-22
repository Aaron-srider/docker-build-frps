FROM ubuntu:20.04
WORKDIR /app
COPY ./frp/* .
COPY ./sources.list /etc/apt/
RUN apt update && apt install vim -y
CMD ["/app/frps", "-c", "/etc/frp/frps.ini"]