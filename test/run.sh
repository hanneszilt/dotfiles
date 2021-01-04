#!/usr/bin/env bash

docker build --tag dotfiles-test -f test/Dockerfile .
docker run -it --rm dotfiles-test