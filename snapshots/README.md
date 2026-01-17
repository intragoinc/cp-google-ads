# Google Ads Account Snapshots

This folder contains historical exports of the Cal Preserving Google Ads account.

## Folder Structure

```
snapshots/
├── 2026-01-16/
│   ├── campaign.csv
│   ├── adgroup.csv
│   ├── keywords.csv
│   ├── rsa.csv
│   ├── text-ads.csv
│   ├── expanded-text-ads.csv
│   ├── campaign-report.csv
│   └── metadata.json
├── 2026-01-23/
│   └── ...
└── latest -> 2026-01-23/    (symlink to most recent)
```

## Standardized Filenames

| Filename | Google Ads Editor Export |
|----------|-------------------------|
| `campaign.csv` | Campaigns |
| `adgroup.csv` | Ad groups |
| `keywords.csv` | Keywords |
| `rsa.csv` | Responsive search ads |
| `text-ads.csv` | Text ads |
| `expanded-text-ads.csv` | Expanded text ads |
| `campaign-report.csv` | Campaign performance report |

## Creating a New Snapshot

1. Run the setup script:
   ```bash
   ./scripts/new-snapshot.sh 2026-01-23 your-github-username
   ```

2. Export from Google Ads Editor:
   - Open Google Ads Editor
   - Select account → Export → Export whole account
   - Save individual CSV files

3. Rename and copy files to the snapshot folder using standardized names

4. Update `metadata.json` with notes and file list

5. Update the latest symlink:
   ```bash
   ./scripts/update-latest.sh
   ```

6. Commit and push:
   ```bash
   git add snapshots/
   git commit -m "Add snapshot 2026-01-23"
   git push
   ```

## Scripts

| Script | Purpose |
|--------|---------|
| `scripts/new-snapshot.sh` | Create a new snapshot folder |
| `scripts/update-latest.sh` | Update latest symlink |
| `scripts/list-snapshots.sh` | List all snapshots with metadata |

## metadata.json Format

```json
{
  "captured_at": "2026-01-16T09:21:59Z",
  "captured_by": "aksha-intrago",
  "account_name": "Cal Preserving",
  "account_id": "123-456-7890",
  "notes": "Weekly snapshot",
  "files": [
    "campaign.csv",
    "adgroup.csv",
    "keywords.csv"
  ]
}
```
