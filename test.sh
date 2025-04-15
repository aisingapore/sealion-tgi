curl http://localhost:8080/v1/completions \
    -H "Content-Type: application/json" \
    -d '{
        "model": "/models/Llama-SEA-LION-v3-8B-IT",
        "prompt": "Artificial Intelligence is",
        "max_tokens": 50,
        "temperature": 0.8,
        "repetition_penalty": 1.2
    }'
