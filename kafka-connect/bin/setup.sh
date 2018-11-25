#!/usr/bin/env bash

curl -X POST -H "Content-Type: application/json" \
http://localhost:8083/connectors \
  -d '{
 "name": "elasticsearch-sink",
  "config": {
    "connector.class": "io.confluent.connect.elasticsearch.ElasticsearchSinkConnector",
    "tasks.max": "1",
    "topics": "analyzed",
    "key.ignore": "true",
    "topic.schema.ignore":"true",
    "schema.ignore":"true",
    "connection.url": "http://elasticsearch:9200",
    "type.name": "kafka-connect",
    "name": "elasticsearch-sink"
  }
}'

curl -X POST \
  -H "Content-Type: application/json" \
  http://localhost:8083/connectors \
  --data '{ "name": "quickstart-jdbc-source",
  "config": {
  "connector.class": "io.confluent.connect.jdbc.JdbcSourceConnector",
  "tasks.max": 1,
  "connection.url": "jdbc:mysql://mysql:3306/connect_test?user=root&password=confluent&allowPublicKeyRetrieval=true&useSSL=false",
  "mode": "incrementing",
  "table.whitelist": "foobar",
  "incrementing.column.name": "id",
  "timestamp.column.name": "modified",
  "topic.prefix": "quickstart-jdbc-",
  "poll.interval.ms": 1000 } }'

curl -X DELETE http://localhost:8083/connectors/quickstart-jdbc-source
