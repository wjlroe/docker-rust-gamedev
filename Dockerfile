FROM scorpil/rust:1.11
MAINTAINER William Roe "git@wjlr.org.uk"

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
	apt-get install \
	build-essential \
	libssl-dev \
	libsdl2-dev \
	libfreetype6-dev \
	-qqy \
	--no-install-recommends \
	&& rm -rf /var/lib/apt/lists/*
