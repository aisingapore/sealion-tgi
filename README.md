# AI Singapore SEA-LION model served by Text Generation Inference (TGI) with Docker Compose

## Model
- [LLaMA3 8B CPT SEA-LIONv2.1 Instruct](https://huggingface.co/aisingapore/llama3-8b-cpt-sea-lionv2.1-instruct)

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
  By default, it starts the server at http://localhost:8000. This server can be queried in the same format as OpenAI API. For example:
  ```bash
  curl http://localhost:8000/v1/completions \
    -H "Content-Type: application/json" \
    -d '{
        "model": "llama3-8b-cpt-sea-lionv2.1-instruct",
        "prompt": "Artificial Intelligence is",
        "max_tokens": 20,
        "temperature": 0.8,
        "repetition_penalty": 1.2
    }'
  ```
