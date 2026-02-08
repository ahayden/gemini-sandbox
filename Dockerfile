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
    && apt-get clean
RUN useradd -m -u 1000 -s /bin/bash -G sudo ${USER:-kali}
RUN echo "${USER:-kali} ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers
WORKDIR /home/${USER:-kali}
USER ${USER:-kali}
CMD ["/bin/bash"]
