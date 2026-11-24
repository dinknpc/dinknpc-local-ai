#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
COMPOSE_DIR="$(dirname "$SCRIPT_DIR")"

echo "Docker services:"
docker compose \
    --project-directory "$COMPOSE_DIR" \
    -f "$COMPOSE_DIR/compose.yaml" \
    ps

echo
echo "Ollama models:"
ollama list