
```bash
export GEMINI_SANDBOX=docker
export GEMINI_SANDBOX_IMAGE=localhost/gemini-sandbox:latest
docker compose build
```

~/.gemini/settings.json
```json
{
  "tools": {
    "sandbox": "docker",
    "docker": {
      "image": "localhost/gemini-sandbox:latest"
    }
  }
}
```
