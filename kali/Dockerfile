FROM docker.io/kalilinux/kali-rolling

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y \
    kali-linux-headless \
    kali-server-mcp \
    iputils-ping \
    iproute2 \
    net-tools \
    tcpdump \
    vim \
    git \
    jq \
    curl \
    && apt-get clean

RUN useradd -m -u 1000 -s /bin/bash -G sudo ${USER:-kali}
RUN echo "${USER:-kali} ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

ENV NPM_CONFIG_PREFIX=/usr/local/share/npm-global
ENV PATH=$PATH:/usr/local/share/npm-global/bin

RUN mkdir -p /workspace && \
    chown ${USER}:${USER} /workspace

RUN npm install -g @google/gemini-cli@latest

RUN curl -fsSL https://antigravity.google.com/install.sh | sh

USER ${USER:-kali}

WORKDIR /workspace

CMD ["/bin/bash"]
