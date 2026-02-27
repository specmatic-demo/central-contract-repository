# Contracts Layout

This folder organizes contracts by service and protocol.

## Structure

- `services/<service-name>/http/openapi.yaml` for HTTP APIs
- `services/<service-name>/graphql/schema.graphql` for GraphQL APIs
- `services/<service-name>/rpc/*.proto` for gRPC APIs
- `services/<service-name>/events/*asyncapi.yaml` for Kafka, JMS, AMQP topics/queues

## Async Request/Reply Convention

Async contracts in this demo include both event streaming and request/reply patterns.

- Request channels/queues/topics usually end with `.request` or `.command`
- Reply channels/queues/topics usually end with `.reply` or `.ack`
- `requestId` is used in payloads to correlate replies with requests
- Event channels (for analytics/domain propagation) remain one-way

## Service Contract Index

- `services/web-bff/graphql/schema.graphql`
- `services/customer-service/http/openapi.yaml`
- `services/customer-service/events/asyncapi.yaml`
- `services/catalog-service/http/openapi.yaml`
- `services/order-service/http/openapi.yaml`
- `services/order-service/events/asyncapi.yaml`
- `services/payment-service/http/openapi.yaml`
- `services/payment-service/rpc/payment.proto`
- `services/shipping-service/http/openapi.yaml`
- `services/shipping-service/events/asyncapi.yaml`
- `services/pricing-service/rpc/pricing.proto`
- `services/pricing-service/events/asyncapi.yaml`
- `services/notification-service/events/asyncapi.yaml`
- `services/analytics-pipeline/http/openapi.yaml`
- `services/analytics-pipeline/events/consumed-events.md`
- `services/returns-service/http/openapi.yaml`
- `services/returns-service/events/asyncapi.yaml`
- `services/inventory-projection-service/http/openapi.yaml`
- `services/inventory-projection-service/events/asyncapi.yaml`
