# seurat_env 1.0

Single-cell RNA-seq environment (Seurat v5, SingleR, harmony, slingshot)

- **Requested by:** not recorded
- **Contributed by:** andreasb
- **Installed by:** petter
- **Added on:** 2026-09-08
- **GPU required:** no
- **Recipe:** `recipes/seurat_env/seurat_env.def`
- **Image location:** `/scale/gr01/shared/common/software/seurat_env/1.0/seurat_env_v1.0.sif`
- **Module file:** `modulefiles/seurat_env/1.0.lua`

## Usage on COSMOS-SENS

```bash
module use /scale/gr01/shared/common/modules
module load seurat_env/1.0
seurat_env [args...]
```

`module load` only defines the `seurat_env` command — it doesn't run anything by
itself, so it's safe inside a SLURM batch script. `seurat_env [args...]` runs
`singularity run /scale/gr01/shared/common/software/seurat_env/1.0/seurat_env_v1.0.sif [args...]`, i.e. whatever the image's
`%runscript` does with those args. For an interactive shell inside the image
instead, use:

```bash
apptainer shell /scale/gr01/shared/common/software/seurat_env/1.0/seurat_env_v1.0.sif
```

## Rebuilding this image

```bash
apptainer build seurat_env_v1.0.sif recipes/seurat_env/seurat_env.def
```
