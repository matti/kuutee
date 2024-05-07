#!/usr/bin/env bash

set -eEuo pipefail

_log() {
  echo "KUUTEE: $*"
}

export BUILDKIT_PROGRESS=plain

services="ubuntu2004 ubuntu2404 ubuntu2204 ubuntu1804"

for service in $services
do
  _log "building $service"
  if docker compose build "$service"
  then
    _log "$service build ok"
  else
    _log "$service build failed"
  fi
done

_log "done"
