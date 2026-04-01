#!/bin/bash

set -e

echo "===================================="
echo " DevOps Journey CI Validation Start "
echo "===================================="

echo "Checking current directory..."
pwd

echo "Listing repository files..."
ls -la

echo "Creating build report..."
mkdir -p reports

echo "Build executed successfully on: $(date)" > reports/build-report.txt
echo "Executed by Jenkins pipeline" >> reports/build-report.txt
echo "Repository validation complete" >> reports/build-report.txt

echo "CI validation completed successfully."
