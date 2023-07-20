#!/bin/bash

# Fail on any error.
set -e

cd "${KOKORO_ARTIFACTS_DIR}/github/kokoro-dev"

echo "not matching trigger_path_regex"

if [ "$1" == "release" ]; then
  javac -g:none Hello.java
else
  javac Hello.java
fi
java Hello
