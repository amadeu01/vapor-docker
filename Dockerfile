FROM swift:4.1

LABEL maintainer="Amadeu Cavalcante (amadeu01@gmail.com)"

RUN apt-get -qq update &&  \
	curl -sL apt.vapor.sh -o apt.vapor.sh && \
	bash ./apt.vapor.sh && \
	apt-get -y install vapor && \
	rm -rf /var/lib/apt/lists/*

WORKDIR /vapor

RUN ["vapor", "--help"]