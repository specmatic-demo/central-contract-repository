# Analytics Pipeline Consumed Event Contracts

The analytics pipeline consumes the following event contracts from upstream services:

- `../../customer-service/events/asyncapi.yaml`
- `../../order-service/events/kafka-asyncapi.yaml`
- `../../pricing-service/events/asyncapi.yaml`
- `../../notification-service/events/mqtt-asyncapi.yaml`

These contracts define the producer payload schemas used by analytics ingestion jobs.
