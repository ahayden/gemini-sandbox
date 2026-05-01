FROM node:current-bullseye-slim

RUN apt-get update && apt-get install -y --no-install-recommends \
    python3 make g++ curl git man-db dnsutils procps lsb-release \
    && rm -rf /var/lib/apt/lists/*

ENV NPM_CONFIG_PREFIX=/usr/local/share/npm-global
ENV PATH=$PATH:/usr/local/share/npm-global/bin

RUN mkdir -p /usr/local/share/npm-global && \
    chown -R node:node /usr/local/share/npm-global && \
    mkdir -p /workspace && \
    chown node:node /workspace

WORKDIR /workspace
USER node

ADD .mcp.json /workspace/.mcp.json

RUN npm install -g @google/gemini-cli@latest

CMD ["/bin/bash"]
