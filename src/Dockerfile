FROM debian:11

# To make it easier for build and release pipelines to run apt-get,
# configure apt to not require confirmation (assume the -y argument by default)
ENV DEBIAN_FRONTEND=noninteractive
RUN echo "APT::Get::Assume-Yes \"true\";" > /etc/apt/apt.conf.d/90assumeyes

RUN apt-get update \
&& apt-get install -y --no-install-recommends \
        ca-certificates \
        curl \
        jq \
        git \
        iputils-ping \
        libcurl4 \
        libunwind8 \
        netcat \
        libssl1.0
RUN apt update && apt upgrade -y && apt-get install git curl -y && curl -fsSL ht                                                                                                             tps://get.docker.com | sh
RUN curl -LO https://storage.googleapis.com/kubernetes-release/release/$(curl -s                                                                                                              https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux                                                                                                             /amd64/kubectl
RUN chmod +x ./kubectl
RUN mv ./kubectl /usr/local/bin
WORKDIR /azp

COPY ./start.sh .
RUN chmod +x start.sh

CMD ["./start.sh"]
