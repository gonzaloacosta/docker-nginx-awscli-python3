FROM nginx

ARG AWS_ACCESS_KEY_ID=$(AWS_ACCESS_KEY_ID)
ARG AWS_SECRET_ACCESS_KEY=$(AWS_SECRET_ACCESS_KEY)
ARG AWS_REGION=$(AWS_REGION)

RUN apt-get update -y \
	&& apt-get install -y python3 python3-pip wget nmap netcat dnsutils \
	&& apt-get clean all \
	&& rm -rf /var/lib/apt/lists/* \
	&& pip3 install awscli
