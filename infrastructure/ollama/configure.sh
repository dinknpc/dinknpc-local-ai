#!/usr/bin/env bash

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "Installing Ollama models..."

while IFS= read -r model || [[ -n "$model" ]]; do
    [[ -z "$model" || "$model" == \#* ]] && continue

    echo "Pulling model: $model"
    ollama pull "$model"
done < "$SCRIPT_DIR/models.txt"

echo "Model installation complete."

ollama list