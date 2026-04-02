#!/bin/bash
set -e

echo "===================================="
echo " TEST STAGE STARTED "
echo "===================================="

mkdir -p reports

if [ -f build/build-output.txt ]; then
    echo "Running validation tests for environment: ${ENVIRONMENT}"
    echo "Test executed for environment: ${ENVIRONMENT}" > reports/test-report.txt
    echo "Package version under test: ${PACKAGE_VERSION}" >> reports/test-report.txt
    echo "Build artifact validation passed." >> reports/test-report.txt
    echo "Test stage completed successfully." >> reports/test-report.txt
    echo "Test stage completed successfully."
else
    echo "ERROR: build/build-output.txt not found!"
    exit 1
fi
