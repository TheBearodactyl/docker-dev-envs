#!/usr/bin/env bash
set -euo pipefail
IFS='\n\t'

docker build -t c-cpp-dev .
docker run -it c-cpp-dev:latest
