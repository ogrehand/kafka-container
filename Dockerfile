FROM openjdk:17.0.2-slim-buster


RUN apt-get update && apt-get -y install procps

COPY kafka_2.13-3.3.1/ /bin/kafka_2.13-3.3.1
COPY kafka-start.sh /bin/kafka_2.13-3.3.1/

ENV KAFKA_HOME=/bin/kafka_2.13-3.3.1
WORKDIR /bin/kafka_2.13-3.3.1

ENTRYPOINT [ "./kafka-start.sh" ]