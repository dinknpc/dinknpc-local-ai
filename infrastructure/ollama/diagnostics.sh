#!/usr/bin/env bash
set -euo pipefail

echo "=== Ollama Version ==="
ollama --version

echo
echo "=== API Health ==="
curl -fsS http://127.0.0.1:11434/api/tags

echo
echo
echo "=== Installed Models ==="
ollama list

echo
echo "=== Loaded Models ==="
ollama ps

echo
echo "=== Runtime Configuration ==="
for variable in \
  OLLAMA_HOST \
  OLLAMA_MAX_LOADED_MODELS \
  OLLAMA_NUM_PARALLEL \
  OLLAMA_KEEP_ALIVE
do
    printf "%s=%s\n" \
      "$variable" \
      "$(launchctl getenv "$variable")"
done

echo
echo "=== Disk Usage ==="
du -sh "$HOME/.ollama/models"

echo
echo "=== Available Storage ==="
df -h /