# r-singlecell 1.0

Basic R environment for single-cell RNA-seq analysis (Seurat)

- **Requested by:** not recorded
- **Contributed by:** petterst
- **Installed by:** petter
- **Added on:** 2026-09-08
- **GPU required:** no
- **Recipe:** `recipes/r-singlecell/r-singlecell.def`
- **Image location:** `/scale/gr01/shared/common/software/r-singlecell/1.0/r-singlecell_v1.0.sif`
- **Module file:** `modulefiles/r-singlecell/1.0.lua`

## Usage on COSMOS-SENS

```bash
module use /scale/gr01/shared/common/modules
module load r-singlecell/1.0
r-singlecell [args...]
```

`module load` only defines the `r-singlecell` command — it doesn't run anything by
itself, so it's safe inside a SLURM batch script. `r-singlecell [args...]` runs
`singularity run /scale/gr01/shared/common/software/r-singlecell/1.0/r-singlecell_v1.0.sif [args...]`, i.e. whatever the image's
`%runscript` does with those args. For an interactive shell inside the image
instead, use:

```bash
apptainer shell /scale/gr01/shared/common/software/r-singlecell/1.0/r-singlecell_v1.0.sif
```

## Rebuilding this image

```bash
apptainer build r-singlecell_v1.0.sif recipes/r-singlecell/r-singlecell.def
```
