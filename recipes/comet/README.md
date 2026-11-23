# comet 1.1.1

COMET: assign individual long reads (PacBio HiFi / ONT) from bulk tissue to their cell type of origin from CpG methylation, plus cell-type DMR calling

- **Requested by:** Caterina Francesconi
- **Contributed by:** petterst
- **Installed by:** petter
- **Added on:** 2026-11-23
- **GPU required:** no
- **Recipe:** `recipes/comet/comet.def`
- **Image location:** `/scale/gr01/shared/common/software/comet/1.1.1/comet_v1.1.1.sif`
- **Module file:** `modulefiles/comet/1.1.1.lua`

## Usage on COSMOS-SENS

```bash
module use /scale/gr01/shared/common/modules
module load comet/1.1.1
comet [args...]
```

`module load` only defines the `comet` command — it doesn't run anything by
itself, so it's safe inside a SLURM batch script. `comet [args...]` runs
`singularity run /scale/gr01/shared/common/software/comet/1.1.1/comet_v1.1.1.sif [args...]`, i.e. whatever the image's
`%runscript` does with those args. For an interactive shell inside the image
instead, use:

```bash
apptainer shell /scale/gr01/shared/common/software/comet/1.1.1/comet_v1.1.1.sif
```

## Rebuilding this image

```bash
apptainer build comet_v1.1.1.sif recipes/comet/comet.def
```
