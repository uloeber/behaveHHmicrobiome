# Input data

The analysis expects the files below in the directory specified by `MICROBIOME_PREF_DATA` or, by default, in this `data/` directory.

The source data are **not included** in the public repository. 

## Required inputs

| File | Cohort | Role | Required when |
|---|---|---|---|
| `23622_meta_dummy.r` | Community | linked clinical/covariate metadata; expected R object `meta_dummy` | always |
| `Hamburg_AltruismVariables.csv` | Community | preference/behavioural variables | always |
| `HHaf_motusv3.1_family.tsv` | Community | family-level shotgun taxonomic profile | always |
| `HHaf_motusv3.1_genus.tsv` | Community | genus-level shotgun taxonomic profile | always |
| `HHaf_motusv3.1.tsv` | Community | species-level shotgun taxonomic profile | when species-level MaAsLin2 is enabled |
| `rtk_lowrc_HHaf_motusv3.1_phylum.tsvrarefied_to_8902.000000_n_0.tsv` | Community | rarefied phylum table for Bacillota/Bacteroidota ratio | when ratio analysis is enabled |
| `rtk_lowrc_HHaf_motusv3.1.tsvmedian_alpha_diversity.tsv` | Community | RTK median alpha-diversity estimates | always |
| `metabolome.r` | Community | metabolomics input | when metabolomics is enabled |
| `UHHdata.xlsx` | Student | linked metadata and preference/behavioural variables | always |
| `Family.txt` | Student | family-level 16S profile | always |
| `Genus.txt` | Student | genus-level 16S profile | always |
| `lowrc_Phylumrtkrarefied_to_7423.000000_n_0.tsv` | Student | rarefied phylum table for Bacillota/Bacteroidota ratio | when ratio analysis is enabled |
| `rtkmedian_alpha_diversity.tsv` | Student | RTK median alpha-diversity estimates | always |

## Expected layout

If the data can be stored locally:

```text
data/
├── 23622_meta_dummy.r
├── Hamburg_AltruismVariables.csv
├── HHaf_motusv3.1_family.tsv
├── HHaf_motusv3.1_genus.tsv
├── HHaf_motusv3.1.tsv
├── rtk_lowrc_HHaf_motusv3.1_phylum.tsvrarefied_to_8902.000000_n_0.tsv
├── rtk_lowrc_HHaf_motusv3.1.tsvmedian_alpha_diversity.tsv
├── metabolome.r
├── UHHdata.xlsx
├── Family.txt
├── Genus.txt
├── lowrc_Phylumrtkrarefied_to_7423.000000_n_0.tsv
└── rtkmedian_alpha_diversity.tsv
```

For controlled-access data, keep the files outside the Git repository and run:

```bash
export MICROBIOME_PREF_DATA="/path/to/private/data"
Rscript run_analysis.R
```

## Files intentionally not required by the final workflow

Microbiome sequence data for the Student cohort are publicly available through the European Nucleotide Archive under accession number PRJEB11419; the linked preference data are available from the corresponding author upon reasonable request. Community-cohort data are subject to data-protection regulations of the University Medical Center Hamburg-Eppendorf and can be made available to qualified researchers upon reasonable request to the authors.