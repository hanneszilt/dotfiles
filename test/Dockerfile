FROM ubuntu:focal

RUN apt-get update \
 && apt-get install -y sudo curl git

RUN groupadd hannes \
    && useradd --gid hannes --create-home hannes \
    && adduser hannes sudo \
    && echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers

USER hannes
WORKDIR /home/hannes


RUN sh -c "$(curl -fsSL https://git.io/chezmoi)" -- -b "/home/hannes/.local/bin"
ENV PATH="/home/hannes/.local/bin:${PATH}"

RUN mkdir $HOME/.local/share

RUN echo 'alias chezmoi_init="chezmoi init --apply --source='$HOME'/.local/share/chezmoi"' >> ~/.bashrc

ENTRYPOINT ["bash"]
