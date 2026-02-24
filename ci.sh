#!/usr/bin/env bash

specmatic central-contract-repo-report

specmatic send-report \
  --repo-id=$(gh api 'repos/{owner}/{repo}' --jq .id) \
  --repo-name=$(gh repo view --json name -q .name) \
  --repo-url=$(gh repo view --json url --jq .url) \
  --branch-name $(git rev-parse --abbrev-ref HEAD)
