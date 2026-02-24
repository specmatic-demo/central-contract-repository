#!/usr/bin/env bash

specmatic send-report \
  --repo-id $(pwd) \
  --repo-name $(basename $(pwd)) \
  --repo-url file://$(pwd) \
  --branch-name $(git rev-parse --abbrev-ref HEAD)
