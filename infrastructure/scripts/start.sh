#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
COMPOSE_DIR="$(dirname "$SCRIPT_DIR")"

docker compose \
    --project-directory "$COMPOSE_DIR" \
    -f "$COMPOSE_DIR/compose.yaml" \
    up -d