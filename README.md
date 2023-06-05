# Change Data Capture (CDC) with PostgreSQL and Kafka

TBD

## Architecture

```mermaid
flowchart TB
    subgraph Database App
    pgamdmin["pgAdmin"]-->postgresql[("PostgreSQL")]
    end
    subgraph Datastream
    Zookeeper<-->Kafka["Kafka"]
    end
    subgraph Consumer 
    redpanda["Redpanda Console"]
    end
    postgresql[("PostgreSQL")]-->debezium>"Debezium PostgreSQL Connector"]
    debezium>"Debezium PostgreSQL Connector"]-->Kafka["Kafka"]
    Kafka["Kafka"]-->redpanda["Redpanda Console"]
    change(["User"])-. Change entry .->pgamdmin["pgAdmin"]
    redpanda["Redpanda Console"]-. Propagate Change .->changed(["New Entry"])
```

## Usage

* Run the following command to start the docker containers:

```
docker-compose up
```

* Access pgAdmin at http://localhost:8080 and login with the following credentials
    * Email: dbuser@example.com
    * Password: dbpassword
    * Shop database credentials
        * Host: postgresql
        * Port: 5432
        * Username: dbuser
        * Password: dbpassword

* Access Redpanda console at http://localhost:8081
    * Products Update Topic: http://localhost:8081/topics/product-updates.public.products?p=-1&s=50&o=-1#messages

Update an entry in the products table and see the change in the Redpanda console.