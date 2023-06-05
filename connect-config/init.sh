#!/bin/sh

sleep 10

curl --location 'connect:8083/connectors' \
--header 'Accept: application/json' \
--header 'Content-Type: application/json' \
--data '{
  "name": "products-connector",
  "config": {
    "connector.class": "io.debezium.connector.postgresql.PostgresConnector",
    "topic.prefix": "product-updates",
    "database.hostname": "postgresql",
    "database.port": "5432",
    "database.user": "dbuser",
    "database.password": "dbpassword",
    "database.dbname": "shop",
    "database.server.name": "shopdbserver",
    "table.include.list": "public.products",
    "schema.history.internal.kafka.bootstrap.servers": "kafka:9092",
    "schema.history.internal.kafka.topic": "schemahistory.products",
    "plugin.name": "pgoutput"
  }
}' || true