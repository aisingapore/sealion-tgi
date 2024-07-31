curl http://localhost:8000/v1/completions \
    -H "Content-Type: application/json" \
    -d '{
        "model": "/models/llama3-8b-cpt-sealionv2-instruct",
        "prompt": "Artificial Intelligence is",
        "max_tokens": 20,
        "temperature": 0.8,
        "repetition_penalty": 1.2
    }'
