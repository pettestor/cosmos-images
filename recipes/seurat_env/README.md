# seurat_env 1.0

Single-cell RNA-seq environment (Seurat v5, SingleR, harmony, slingshot)

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
```

Loading the module runs the container directly (`singularity run`). If you need
an interactive shell inside the image instead, use:

```bash
apptainer shell /scale/gr01/shared/common/software/seurat_env/1.0/seurat_env_v1.0.sif
```

## Rebuilding this image

```bash
apptainer build seurat_env_v1.0.sif recipes/seurat_env/seurat_env.def
```
