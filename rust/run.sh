#!/usr/bin/env bash
set -euo pipefail
IFS='\n\t'

docker build -t rust-dev .
docker run -it rust-dev:latest
