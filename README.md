# AI Singapore SEA-LION model served by Text Generation Inference (TGI) with Docker Compose

## Model
- [Llama-SEA-LION-v3-8B-IT](https://huggingface.co/aisingapore/Llama-SEA-LION-v3-8B-IT)

## Requirements
- [Docker](https://docs.docker.com/engine/install/)
- GPU: https://huggingface.co/docs/text-generation-inference/en/quicktour#supported-hardware
- 80GB of disk storage for the model and docker image

## Quick Start
- Start the service.
  ```bash
  docker compose up
  ```
- [TGI](https://huggingface.co/docs/text-generation-inference/) is deployed as a server that implements the OpenAI API protocol.
  The server can be queried via http://localhost:8080 in the same format as the OpenAI API. For example:
  ```bash
  curl http://localhost:8080/v1/completions \
    -H "Content-Type: application/json" \
    -d '{
        "model": "Llama-SEA-LION-v3-8B-IT",
        "prompt": "Artificial Intelligence is",
        "max_tokens": 50,
        "temperature": 0.8,
        "repetition_penalty": 1.2
    }'
  ```
