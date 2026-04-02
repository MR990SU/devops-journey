#!/bin/bash
set -e

echo "===================================="
echo " BUILD STAGE STARTED "
echo "===================================="

mkdir -p build

echo "Build started for environment: ${ENVIRONMENT}" > build/build-output.txt
echo "Package version: ${PACKAGE_VERSION}" >> build/build-output.txt
echo "Build simulation executed at: $(date)" >> build/build-output.txt
echo "Build stage completed successfully." >> build/build-output.txt

echo "Build completed successfully."
