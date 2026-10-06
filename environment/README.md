# Software environment

Each successful analysis run writes a `sessionInfo.txt` file in the run-specific `logs/` directory.

Before archival/publication, copy the `sessionInfo.txt` from the exact run used for the manuscript to this directory, for example:

```bash
cp outputs/<FINAL_RUN_ID>/logs/sessionInfo.txt environment/sessionInfo.txt
```

Do not invent or manually edit package versions. The archived file should come directly from the final executed analysis environment.
