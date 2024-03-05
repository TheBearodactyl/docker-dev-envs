#!/usr/bin/env bash
set -euo pipefail
IFS='\n\t'

docker build -t laravel-dev .
docker run -it laravel-dev:latest
