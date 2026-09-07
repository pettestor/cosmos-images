# cellbender 0.3.1

Ambient RNA removal for single-cell data

- **Contributed by:** petterst
- **Added on:** 2026-09-07
- **GPU required:** yes
- **Recipe:** `recipes/cellbender/cellbender.def`
- **Image location:** `/scale/gr01/shared/common/software/cellbender/0.3.1/cellbender_v0.3.1.sif`
- **Module file:** `modulefiles/cellbender/0.3.1.lua`

## Usage on COSMOS-SENS

```bash
module use /scale/gr01/shared/common/modules
module load cellbender/0.3.1
```

Loading the module runs the container directly (`singularity run`). If you need
an interactive shell inside the image instead, use:

```bash
apptainer shell --nv /scale/gr01/shared/common/software/cellbender/0.3.1/cellbender_v0.3.1.sif
```

## Rebuilding this image

```bash
apptainer build cellbender_v0.3.1.sif recipes/cellbender/cellbender.def
```
