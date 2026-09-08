# cellbender 0.3.1

Ambient RNA removal for single-cell data

- **Contributed by:** petterst
- **Installed by:** petter
- **Added on:** 2026-09-08
- **GPU required:** yes
- **Recipe:** `recipes/cellbender/cellbender.def`
- **Image location:** `/scale/gr01/shared/common/software/cellbender/0.3.1/cellbender_v0.3.1.sif`
- **Module file:** `modulefiles/cellbender/0.3.1.lua`

## Usage on COSMOS-SENS

```bash
module use /scale/gr01/shared/common/modules
module load cellbender/0.3.1
cellbender [args...]
```

`module load` only defines the `cellbender` command — it doesn't run anything by
itself, so it's safe inside a SLURM batch script. `cellbender [args...]` runs
`singularity run --nv /scale/gr01/shared/common/software/cellbender/0.3.1/cellbender_v0.3.1.sif [args...]`, i.e. whatever the image's
`%runscript` does with those args. For an interactive shell inside the image
instead, use:

```bash
apptainer shell --nv /scale/gr01/shared/common/software/cellbender/0.3.1/cellbender_v0.3.1.sif
```

## Rebuilding this image

```bash
apptainer build cellbender_v0.3.1.sif recipes/cellbender/cellbender.def
```
