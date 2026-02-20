FROM node:22-bullseye-slim

ENV DEBIAN_FRONTEND=noninteractive
ENV NPM_CONFIG_PREFIX=/home/node/.npm-global
ENV PATH=$PATH:/home/node/.npm-global/bin

RUN apt-get update && apt-get install -y --no-install-recommends \
    curl git python3 make g++ ca-certificates man-db gpg \
    && rm -rf /var/lib/apt/lists/*

RUN mkdir -p /etc/apt/keyrings && \
    curl -fsSL https://download.docker.com/linux/debian/gpg | \
    gpg --dearmor -o /etc/apt/keyrings/docker.gpg && \
    echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/debian bullseye stable" | tee /etc/apt/sources.list.d/docker.list > /dev/null && \
    apt-get update && apt-get install -y docker-ce-cli && \
    rm -rf /var/lib/apt/lists/*

USER node
RUN usermod -aG docker node
WORKDIR /app

RUN mkdir -p /home/node/.npm-global && \
    npm install -g @google/gemini-cli@latest

RUN mkdir -p /home/node/.gemini

ENTRYPOINT ["gemini","--sandbox"]
