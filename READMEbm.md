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

## Software and resources

The final statistical workflow is implemented in [R](https://www.r-project.org/). Exact package versions used for the publication run are recorded automatically in `sessionInfo.txt`; the links below point to the official project or package documentation rather than to a particular current version.

| Software | Role in this repository | Official resource |
|---|---|---|
| R | Statistical computing environment | [R Project](https://www.r-project.org/) |
| MaAsLin2 | Multivariable taxonomic association models | [Bioconductor: MaAsLin2](https://bioconductor.org/packages/Maaslin2/) |
| vegan | Bray-Curtis dissimilarities, PERMANOVA and community-ecology utilities | [vegan](https://vegandevs.github.io/vegan/) |
| tidyverse | Data manipulation and visualization framework | [tidyverse](https://www.tidyverse.org/) |
| data.table | Fast import of tabular files | [data.table](https://r-datatable.com/) |
| readxl | Import of Excel metadata files | [readxl](https://readxl.tidyverse.org/) |
| broom | Tidy extraction of model estimates | [broom](https://broom.tidymodels.org/) |
| janitor | Harmonization of imported column names | [janitor](https://sfirke.github.io/janitor/) |
| stringr | String handling | [stringr](https://stringr.tidyverse.org/) |
| forcats | Factor handling | [forcats](https://forcats.tidyverse.org/) |
| patchwork | Composition of publication figures | [patchwork](https://patchwork.data-imaginist.com/) |
| rmarkdown | Executable analysis notebook | [R Markdown](https://rmarkdown.rstudio.com/) |
| knitr | Notebook rendering and report tables | [knitr](https://yihui.org/knitr/) |

Several upstream microbiome-processing tools generated inputs used by this analysis but are not executed by the public R notebook:

| Software | Role in the study | Official resource |
|---|---|---|
| mOTUs | Taxonomic profiling of Community-cohort shotgun metagenomes | [mOTUs profiler](https://github.com/motu-tool/mOTUs) |
| NGLess | Shotgun metagenomic read processing / profiling workflow | [NGLess documentation](https://ngless.embl.de/) |
| LotuS3 | Amplicon processing for the Student cohort | [LotuS3](https://github.com/hildebra/LotuS3/) |
| RTK | Rarefaction and alpha-diversity calculations | [CRAN: rtk](https://CRAN.R-project.org/package=rtk) |

Software versions, parameters and citations reported in the manuscript remain authoritative for the analyses presented in the paper. The notebook writes `sessionInfo.txt` to each completed run so the exact R and package versions used for a run are recorded. A publication-specific session information file should be copied to `environment/` once the final public run has been executed.

## Reproducibility and validation

The notebook writes intermediate/result tables, figures, a file manifest, model-design audits, and a set of workflow-integrity checks. With `strict_checks = TRUE`, the run stops if a critical analysis check fails.

Generated `outputs/` are ignored by Git by default because they may include participant-level harmonized metadata or other derived data that should not be released automatically. Aggregate publication outputs can be added selectively after their sharing status has been confirmed.

## Data availability

This repository intentionally contains code only. Availability of the underlying cohort, microbiome, and metabolomics data should follow the manuscript's Data Availability statement and the applicable consent, data-use, and institutional restrictions.

## Code provenance

The public notebook was derived from the manuscript team's final stable analysis notebook, v5.3c. Historical development notebooks and superseded scripts are not required to run the final workflow and are therefore not part of the public analysis code.

## License

A software license must be approved by the project/institutional rights holder before public release. For this analysis-code repository, a permissive open-source license such as the **MIT License** is a suitable default candidate because it permits reuse, modification and redistribution while requiring preservation of the copyright and license notice. **BSD-3-Clause** is a similarly permissive alternative. A copyleft license such as **GPL-3.0** should be chosen only if the project explicitly wants redistributed derivative software to remain under the same license terms.

The repository license applies only to original code distributed in this repository. R packages and external software used by the workflow remain subject to their own licenses.

**Before public release:** confirm the chosen license and copyright holder(s) with the relevant project/institutional process, then add the corresponding standard `LICENSE` file at the repository root.
