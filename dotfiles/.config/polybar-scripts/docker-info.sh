#!/usr/bin/env bash

[[ $(command -v docker) ]] && DOCKER_UP=$(ps aux | grep dockerd | grep root | wc -l)

[ "$DOCKER_UP" -gt 0 ] && DOCKER_CONTAINER_COUNT=$(docker ps -q | wc -l) && echo  || echo ""

