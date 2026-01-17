#!/bin/bash
#
# update-latest.sh - Update the 'latest' symlink to point to most recent snapshot
#
# Usage: ./scripts/update-latest.sh
#

set -e

# Get the repo root directory
REPO_ROOT="$(cd "$(dirname "$0")/.." && pwd)"
SNAPSHOTS_DIR="$REPO_ROOT/snapshots"

# Find the most recent snapshot folder (by name, which is date-based)
LATEST=$(ls -1 "$SNAPSHOTS_DIR" | grep -E '^[0-9]{4}-[0-9]{2}-[0-9]{2}$' | sort -r | head -1)

if [ -z "$LATEST" ]; then
    echo "Error: No snapshot folders found"
    exit 1
fi

# Remove existing symlink if it exists
rm -f "$SNAPSHOTS_DIR/latest"

# Create new symlink (relative path for git compatibility)
cd "$SNAPSHOTS_DIR"
ln -s "$LATEST" latest

echo "Updated 'latest' symlink to point to: $LATEST"
