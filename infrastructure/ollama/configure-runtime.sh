#!/usr/bin/env bash
set -euo pipefail

echo "Configuring Ollama runtime..."

# Restrict Ollama to localhost
launchctl setenv OLLAMA_HOST "127.0.0.1:11434"

# Limit memory usage
launchctl setenv OLLAMA_MAX_LOADED_MODELS "1"
launchctl setenv OLLAMA_NUM_PARALLEL "1"

# Unload idle models after five minutes
launchctl setenv OLLAMA_KEEP_ALIVE "5m"

echo "Ollama environment variables configured."
echo "Restart Ollama to apply the settings."