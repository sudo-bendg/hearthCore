#!/bin/bash
docker compose build --no-cache
docker compose up -d
docker exec -it ollama ollama pull mistral:latest