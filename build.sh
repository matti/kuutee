#!/usr/bin/env bash

services="ubuntu2004 ubuntu2404 ubuntu2204 ubuntu1804"

for service in $services
do
  docker compose build "$service" || echo "failed"
  echo ""
done
