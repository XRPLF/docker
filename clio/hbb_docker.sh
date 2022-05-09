#!/usr/bin/env bash
set -e
SOURCE_DIR=${1:-$PWD}
IMAGE=${2:-hbb_clio_builder}

echo "Clio source directory: $SOURCE_DIR"
echo "Using image: $IMAGE"

docker run -t -i --rm \
  -v $SOURCE_DIR:/source \
  $IMAGE

