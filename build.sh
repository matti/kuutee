#!/usr/bin/env bash

set -eEuo pipefail


export BUILDKIT_PROGRESS=plain

services="ubuntu2004 ubuntu2404 ubuntu2204 ubuntu1804"

for service in $services
do
  rm -f "build-$service.log" || true

  (
    exec docker compose build "$service"
  ) | tee -a "build-$service.log"
done

_log "done"
