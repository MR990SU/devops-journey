#!/bin/bash
set -e

echo "===================================="
echo " PACKAGE STAGE STARTED "
echo "===================================="

mkdir -p package

tar -czf package/devops-journey-package.tar.gz build reports

echo "Packaging completed successfully."
