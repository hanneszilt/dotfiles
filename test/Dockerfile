FROM ubuntu:focal

RUN apt-get update \
 && apt-get install -y sudo curl git
RUN groupadd hannes && \
    useradd --gid hannes --create-home hannes && \
    adduser hannes sudo && \
    echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers

USER hannes
WORKDIR /home/hannes

RUN curl -sfL https://git.io/chezmoi | sudo sh
ENV PATH="/home/hannes/bin:${PATH}"

COPY setup.sh /home/hannes/

ENTRYPOINT ["bash"]
