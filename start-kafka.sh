#!/bin/sh

export KAFKA_ADVERTISED_HOST_NAME=$(curl http://169.254.169.254/latest/meta-data/public-ipv4)
echo $KAFKA_ADVERTISED_HOST_NAME

/start.sh "$@"
