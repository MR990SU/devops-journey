#!/bin/bash
set -e

echo "===================================="
echo " [PACKAGE STAGE] "
echo "===================================="

echo "Packaging version: ${PACKAGE_VERSION}"

mkdir -p package

tar -czf package/devops-journey-${PACKAGE_VERSION}.tar.gz build reports

echo "[PACKAGE] Artifact created successfully."
