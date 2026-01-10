#!/bin/bash

REALPATH=$(realpath "$0")
DIRNAME=$(dirname "$REALPATH")

cd "$DIRNAME"

docker run --rm -it -v .:/project -w /project ghcr.io/qmk/qmk_cli:latest bash -c "
git config --global --add safe.directory \"*\"
qmk compile -kb ergohaven/hpd/rev2 -km v2_enc_ball
"
