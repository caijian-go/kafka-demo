#!/usr/bin/env sh


KAFKA_HOME=/opt/bitnami/kafka
cd $KAFKA_HOME

echo "wechat_msg_group  LOG_END_OFFSET"
./bin/kafka-consumer-groups.sh --bootstrap-server 127.0.0.1:9004 --group wechat_msg_group -describe