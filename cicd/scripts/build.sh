#!/bin/bash
set -e

echo "===================================="
echo " [BUILD STAGE] "
echo "===================================="

echo "Environment: ${ENVIRONMENT}"
echo "Version: ${PACKAGE_VERSION}"

mkdir -p build

echo "Build started at: $(date)" > build/build-output.txt
echo "Environment: ${ENVIRONMENT}" >> build/build-output.txt
echo "Version: ${PACKAGE_VERSION}" >> build/build-output.txt

echo "[BUILD] Completed successfully."
