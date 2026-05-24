FROM us-central1-docker.pkg.dev/cloud-workstations-images/predefined/code-oss:latest

USER root

RUN apt-get update && apt-get install -y --no-install-recommends \
    python3 curl jq make g++ curl git man-db dnsutils procps lsb-release \
    && rm -rf /var/lib/apt/lists/*

RUN mkdir -p /workspace && \
    chown user:user /workspace

WORKDIR /workspace

#ADD .mcp.json /workspace/.mcp.json

RUN curl -fsSL https://antigravity.google.com/install.sh | sh

USER user

CMD ["/bin/bash"]
