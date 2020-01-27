#!/usr/bin/env bash

set -euo pipefail

if [ "${TAG}" == "latest" ]; then
  echo "Skip tests for latest tag"
  exit 0
fi

docker run --entrypoint /usr/bin/grep --rm "${DOCKER_IMAGE}:${TAG}" "${TAG}" "/opt/jboss/keycloak/version.txt"
