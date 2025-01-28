#!/bin/bash

sudo docker exec -it kafka bash -v -c '/opt/kafka/bin/kafka-topics.sh --create --topic transaction_topic --partitions 1 --replication-factor 1 --bootstrap-server localhost:9092'