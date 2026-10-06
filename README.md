# Gut microbiome composition and economic preferences across adulthood

This repository contains the reproducible analysis code for the manuscript **“Gut microbiome composition and economic preferences across adulthood.”**

The public workflow is based on the final stable analysis notebook (v5.3c). Institution-specific and user-specific filesystem paths have been removed. Participant-level and other potentially restricted source data are not included in this repository.

## Repository structure

```text
.
├── README.md
├── .gitignore
├── analysis/
│   └── microbiome_preferences_analysis.Rmd
├── data/
│   └── README.md
├── environment/
│   └── README.md
├── outputs/                 # generated locally; ignored by Git
├── R/
│   └── README.md
└── run_analysis.R
```

## Analysis scope

The notebook contains the final analysis workflow for:

- cohort metadata harmonization and descriptive summaries;
- alpha-diversity analyses;
- genus-level beta-diversity/PCoA visualization and PERMANOVA;
- MaAsLin2 taxonomic association models;
- Community-cohort shotgun species-level MaAsLin2 models;
- the exploratory Bacillota/Bacteroidota ratio analysis; and
- Community-cohort metabolomics analyses.

The Student-cohort 16S data are analysed at family and genus level only. The Community-cohort shotgun data additionally support species-level models.

## Input data

Expected inputs and their roles are documented in [`data/README.md`](data/README.md). The code assumes that all required inputs are available in one data directory.

For a local copy in this repository, place inputs in:

```text
data/
```

For restricted data stored elsewhere, set an environment variable instead:

```bash
export MICROBIOME_PREF_DATA="/path/to/private/data"
```

No private path needs to be written into the analysis code.

## Running the analysis

From the repository root:

```bash
Rscript run_analysis.R
```

By default, outputs are written to a timestamped subdirectory of `outputs/`.

An alternative output location can be supplied without changing the code:

```bash
export MICROBIOME_PREF_OUTPUT="/path/to/analysis/output"
Rscript run_analysis.R
```

The notebook can also be opened in RStudio and run section by section. In that case, open the repository as the working project/root directory, or set `MICROBIOME_PREF_PROJECT` to the repository root.

## Software dependencies

The workflow uses R and the following R packages:

- `tidyverse`
- `data.table`
- `readxl`
- `vegan`
- `broom`
- `janitor`
- `stringr`
- `forcats`
- `patchwork`
- `Maaslin2`
- `rmarkdown`

The notebook writes `sessionInfo.txt` to each completed run so the exact software versions used for a run are recorded. A publication-specific session information file should be copied to `environment/` once the final public run has been executed.

## Reproducibility and validation

The notebook writes intermediate/result tables, figures, a file manifest, model-design audits, and a set of workflow-integrity checks. With `strict_checks = TRUE`, the run stops if a critical analysis check fails.

Generated `outputs/` are ignored by Git by default because they may include participant-level harmonized metadata or other derived data that should not be released automatically. Aggregate publication outputs can be added selectively after their sharing status has been confirmed.

## Data availability

This repository intentionally contains code only. Availability of the underlying cohort, microbiome, and metabolomics data should follow the manuscript's Data Availability statement and the applicable consent, data-use, and institutional restrictions.

## Code provenance

The public notebook was derived from the manuscript team's final stable analysis notebook, v5.3c. Historical development notebooks and superseded scripts are not required to run the final workflow and are therefore not part of the public analysis code.

## License

Add the project-approved software license before public release.
