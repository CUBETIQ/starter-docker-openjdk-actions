FROM cubetiq/openjdk:11u-ubuntu

LABEL maintainer="sombochea@cubetiqs.com"

RUN apt-get update && \
    apt-get install -y --no-install-recommends ca-certificates wget && \
    wget --no-check-certificate https://sh.osa.cubetiqs.com/docker-setup.sh && \
    rm -rf /var/lib/apt/lists/* && \
    apt-get clean

COPY ./entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]