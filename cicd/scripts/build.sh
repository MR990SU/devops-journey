#!/bin/bash
set -e

echo "===================================="
echo " BUILD STAGE STARTED "
echo "===================================="

mkdir -p build

echo "Application build simulation started at: $(date)" > build/build-output.txt
echo "Source prepared successfully." >> build/build-output.txt
echo "Build stage completed." >> build/build-output.txt

echo "Build completed successfully."
