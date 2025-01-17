FROM amazoncorretto:11-alpine3.13

WORKDIR /opt

ARG kafkaversion=3.2.0
ARG scalaversion=2.13

ENV KRAFT_CONTAINER_HOST_NAME=
ENV KRAFT_CREATE_TOPICS=
ENV KRAFT_PARTITIONS_PER_TOPIC=

RUN apk update && apk upgrade && apk add wget

RUN wget https://mirrors.ocf.berkeley.edu/apache/kafka/${kafkaversion}/kafka_${scalaversion}-${kafkaversion}.tgz -O kafka.tgz \
    && tar xvzf kafka.tgz \
    && mv kafka_${scalaversion}-${kafkaversion} kafka

WORKDIR /opt/kafka

COPY ./configs/server.properties ./config/kraft
COPY ./*.sh .

EXPOSE 9092 9093

ENTRYPOINT [ "./docker-entrypoint.sh" ]
