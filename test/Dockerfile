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

RUN echo 'alias chezmoi_init="chezmoi init --apply --source='$HOME'/.local/shared/chezmoi"' >> ~/.bashrc

ENTRYPOINT ["bash"]
