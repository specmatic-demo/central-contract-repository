# Central Contract Repository

This repository hosts API contracts shared across sample applications, including synchronous APIs and asynchronous event/request-reply contracts.

## Structure
- `contracts/`: contract files (OpenAPI, AsyncAPI, GraphQL, gRPC, and others supported by Specmatic)
- `examples/`: request/response examples used by tests and mocks

## Getting started
1. Add contract files to `contracts/` (for example, `orders.yaml`).
2. Keep examples in `examples/` aligned with the contracts, including async request/reply message examples where relevant.
3. Point application repositories to this repo as the source of truth for API contracts.

## Current layout
- Service contracts are organized under `contracts/services/<service-name>/`.
- See `contracts/README.md` for the full index and protocol-specific structure.
