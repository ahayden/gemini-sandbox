FROM docker.io/kalilinux/kali-rolling
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get install -y \
    kali-linux-headless \
    iputils-ping \
    iproute2 \
    net-tools \
    tcpdump \
    vim \
    git \
    curl \
    npm \
    && apt-get clean

RUN useradd -m -u 1000 -s /bin/bash -G sudo ${USER:-kali}
RUN echo "${USER:-kali} ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers
USER ${USER:-kali}

ENV NPM_CONFIG_PREFIX=/usr/local/share/npm-global
ENV PATH=$PATH:/usr/local/share/npm-global/bin

RUN sudo mkdir -p /usr/local/share/npm-global && \
    sudo chown -R ${USER}:${USER} /usr/local/share/npm-global && \
    sudo mkdir -p /workspace && \
    sudo chown ${USER}:${USER} /workspace

WORKDIR /workspace

RUN sudo npm install -g @google/gemini-cli@latest

CMD ["/bin/bash"]
