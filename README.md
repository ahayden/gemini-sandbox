## kali
 - `docker compose up -d`
 - `docker exec -it kali /bin/bash`
 - `docker exec -it --user root kali /bin/bash`

## gemini
 - `cd repo`
 - `docker compose -f ../../docker/gemini/docker-compose.yaml run --rm sandbox`
 - `docker exec -it gemini /bin/bash`
 - `docker exec -it --user root gemini /bin/bash`
