# dinknpcAI

A locally hosted AI development platform running on
an Apple Silicon Mac Studio.

## Hardware

- Apple M1 Max
- 32 GB unified memory
- 460 GB storage

## Components

- Ollama: Local AI inference
- Docker Compose: Container management
- Open WebUI: AI chat interface
- Portainer: Container administration
- ASP.NET Core: AI REST API
- .NET AI agents: Agent orchestration
- MCP: Tool integration

## Deployment

Ollama runs natively on macOS.

Supporting services run in Docker containers.

All externally published application ports are bound
to localhost.

## Setup

See docs/setup.md.

## Commands

Install models:

./infrastructure/ollama/configure.sh

Start containers:

./infrastructure/scripts/start.sh

Stop containers:

./infrastructure/scripts/stop.sh

Check status:

./infrastructure/scripts/status.sh