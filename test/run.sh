#!/usr/bin/env bash
set -euo pipefail

docker build --tag dotfiles-test -f test/Dockerfile ./test
docker run -it --volume "$(pwd)":/home/hannes/.local/share/chezmoi --rm dotfiles-test
