#!/bin/bash
#
# new-snapshot.sh - Create a new Google Ads snapshot folder
#
# Usage: ./scripts/new-snapshot.sh [DATE] [CAPTURED_BY]
#
# Examples:
#   ./scripts/new-snapshot.sh                    # Uses today's date and prompts for name
#   ./scripts/new-snapshot.sh 2026-01-23         # Uses specified date
#   ./scripts/new-snapshot.sh 2026-01-23 aksha-intrago
#

set -e

# Get the repo root directory
REPO_ROOT="$(cd "$(dirname "$0")/.." && pwd)"
SNAPSHOTS_DIR="$REPO_ROOT/snapshots"

# Get date (default to today)
DATE="${1:-$(date +%Y-%m-%d)}"

# Get captured_by (default to git user)
CAPTURED_BY="${2:-$(git config user.name || echo 'unknown')}"

# Create snapshot directory
SNAPSHOT_DIR="$SNAPSHOTS_DIR/$DATE"

if [ -d "$SNAPSHOT_DIR" ]; then
    echo "Error: Snapshot for $DATE already exists at $SNAPSHOT_DIR"
    exit 1
fi

mkdir -p "$SNAPSHOT_DIR"

# Create metadata.json template
cat > "$SNAPSHOT_DIR/metadata.json" << EOF
{
  "captured_at": "$(date -u +%Y-%m-%dT%H:%M:%SZ)",
  "captured_by": "$CAPTURED_BY",
  "account_name": "Cal Preserving",
  "account_id": "",
  "notes": "",
  "files": []
}
EOF

echo "Created snapshot folder: $SNAPSHOT_DIR"
echo ""
echo "Next steps:"
echo "1. Export files from Google Ads Editor"
echo "2. Rename and copy files to: $SNAPSHOT_DIR"
echo "   Expected filenames:"
echo "   - campaign.csv"
echo "   - adgroup.csv"
echo "   - keywords.csv"
echo "   - rsa.csv"
echo "   - text-ads.csv"
echo "   - expanded-text-ads.csv"
echo "   - campaign-report.csv"
echo ""
echo "3. Update metadata.json with notes and file list"
echo "4. Run: ./scripts/update-latest.sh"
echo "5. Commit and push changes"
