#!/bin/bash

# Build script for smart-suggestion Go binary

set -e

echo "Building smart-suggestion-fetch binary..."

# Get the directory where this script is located
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$SCRIPT_DIR"

# Build the binary
go build -o smart-suggestion-fetch ./cmd/main.go

echo "Build completed successfully!"
echo "Binary created: $SCRIPT_DIR/smart-suggestion-fetch"

# Make it executable
chmod +x smart-suggestion-fetch

echo "Binary is ready to use."

