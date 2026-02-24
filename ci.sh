#!/usr/bin/env bash



java -jar ~/.specmatic/specmatic.jar central-contract-repo-report

java -jar ~/.specmatic/specmatic.jar send-report \
  --repo-id=$(gh api 'repos/{owner}/{repo}' --jq .id) \
  --repo-name=$(gh repo view --json name -q .name) \
  --repo-url=$(gh repo view --json url --jq .url) \
  --branch-name $(git rev-parse --abbrev-ref HEAD)
