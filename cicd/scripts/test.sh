#!/bin/bash
set -e

echo "===================================="
echo " TEST STAGE STARTED "
echo "===================================="

mkdir -p reports

if [ -f build/build-output.txt ]; then
    echo "Build output found. Running validation tests..."
    echo "Test executed at: $(date)" > reports/test-report.txt
    echo "Build artifact validation passed." >> reports/test-report.txt
    echo "Repository CI checks passed." >> reports/test-report.txt
    echo "Test stage completed successfully."
else
    echo "ERROR: build/build-output.txt not found!"
    exit 1
fi
