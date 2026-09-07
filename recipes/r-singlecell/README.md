# r-singlecell 1.0

Basic R environment for single-cell RNA-seq analysis (Seurat)

- **Contributed by:** petterst
- **Added on:** 2026-09-07
- **GPU required:** no
- **Recipe:** `recipes/r-singlecell/r-singlecell.def`
- **Image location:** `/scale/gr01/shared/common/software/r-singlecell/1.0/r-singlecell_v1.0.sif`
- **Module file:** `modulefiles/r-singlecell/1.0.lua`

## Usage on COSMOS-SENS

```bash
module use /scale/gr01/shared/common/modules
module load r-singlecell/1.0
```

Loading the module runs the container directly (`singularity run`). If you need
an interactive shell inside the image instead, use:

```bash
apptainer shell /scale/gr01/shared/common/software/r-singlecell/1.0/r-singlecell_v1.0.sif
```

## Rebuilding this image

```bash
apptainer build r-singlecell_v1.0.sif recipes/r-singlecell/r-singlecell.def
```
