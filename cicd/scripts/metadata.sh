#!/bin/bash
set -e

echo "===================================="
echo " BUILD METADATA GENERATION "
echo "===================================="

mkdir -p reports

echo "Generating build metadata..."

cat <<EOF > reports/build-metadata.txt
Build Number: ${BUILD_NUMBER}
Job Name: ${JOB_NAME}
Workspace: ${WORKSPACE}
Node Name: ${NODE_NAME}
Environment: ${ENVIRONMENT}
Run Tests: ${RUN_TESTS}
Package Version: ${PACKAGE_VERSION}
Triggered At: $(date)
EOF

echo "Metadata generated successfully."
