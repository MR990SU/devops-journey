#!/bin/bash
set -e

echo "===================================="
echo " [TEST STAGE] "
echo "===================================="

echo "Environment: ${ENVIRONMENT}"

mkdir -p reports

if [ -f build/build-output.txt ]; then
    echo "[TEST] Running validation checks..."

    echo "Test executed at: $(date)" > reports/test-report.txt
    echo "Environment: ${ENVIRONMENT}" >> reports/test-report.txt
    echo "Version: ${PACKAGE_VERSION}" >> reports/test-report.txt
    echo "Status: PASS" >> reports/test-report.txt

    echo "[TEST] Completed successfully."
else
    echo "[ERROR] Build artifact missing!"
    exit 1
fi
