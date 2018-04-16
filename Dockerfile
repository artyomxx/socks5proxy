FROM ubuntu:xenial
ARG DEBIAN_FRONTEND=noninteractive

RUN	apt-get update && \
	apt-get install dante-server -y

# Change PASSWORD and USERNAME
RUN printf 'PASSWORD\nPASSWORD\n' | adduser USERNAME --gecos ''

COPY danted.conf /etc/

EXPOSE 1080

CMD danted
