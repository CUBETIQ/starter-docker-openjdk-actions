FROM cubetiq/calpine-docker-openjdk:latest

LABEL maintainer="sombochea@cubetiqs.com"

RUN apk add --update git

COPY ./entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]