#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -e

# Navigate to the project root directory
cd "$(dirname "$0")"

# Create and navigate to the build directory
mkdir -p build
cd build

# Run CMake to configure the project
cmake ..

# Compile the project
make

# Optional: Notify the user that the build was successful
echo "Build completed successfully."