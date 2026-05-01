## Options for running
 - `docker compose up -d`
 - `docker exec -it kali /bin/bash`
 - `docker exec -it --user root kali /bin/bash`

### Build for Gemini sandbox
  - `docker compose build`
  - Set ~/.gemini/.env parameters

### Inside Kali VM
  - Run the gemini sandbox inside the Kali VM, with Kali serving MCP:
    - Use the debian sandbox
    - Set the Kali MCP server in .gemini/settings.json
```    
{
  "security": {
    "auth": {
      "selectedType": "gemini-api-key"
    }
  },
  "mcpServers": {
    "kali-server": {
      "type": "stdio",
      "command": "mcp-server",
      "args": ["--server", "http://localhost:5000"]
    }
  }
}
```

### Via Kali Sandbox
  - Use a Kali base image with the Gemini CLI given filesystem access
