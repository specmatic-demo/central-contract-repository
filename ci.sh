#!/usr/bin/env bash



SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO_URL="$(git -C "${SCRIPT_DIR}" config --get remote.origin.url | sed -E 's#^git@github.com:#https://github.com/#; s#\.git$##')"
REPO_SLUG="${REPO_URL#https://github.com/}"
export SPECMATIC_REPO_ID="$(gh api "repos/${REPO_SLUG}" --jq .id)"
export SPECMATIC_REPO_NAME="${REPO_SLUG##*/}"
export SPECMATIC_REPO_URL="${REPO_URL}"
export SPECMATIC_BRANCH_NAME="${GITHUB_HEAD_REF:-${GITHUB_REF_NAME:-main}}"

java -jar ~/.specmatic/specmatic-enterprise.jar central-contract-repo-report
