#!/bin/bash

echo "listeners=PLAINTEXT://0.0.0.0:""$kafka_port" >> config/server.properties
echo "advertised.listeners=PLAINTEXT://localhost:""$kafka_port" >> config/server.properties

$KAFKA_HOME/bin/zookeeper-server-start.sh -daemon config/zookeeper.properties
$KAFKA_HOME/bin/kafka-server-start.sh config/server.properties