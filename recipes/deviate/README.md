# deviate 2.2.3

deviaTE: analysis and visualisation of transposable element (TE) diversity and abundance from sequencing reads

- **Contributed by:** petterst
- **Installed by:** petter
- **Added on:** 2026-10-02
- **GPU required:** no
- **Recipe:** `recipes/deviate/deviate.def`
- **Image location:** `/scale/gr01/shared/common/software/deviate/2.2.3/deviate_v2.2.3.sif`
- **Module file:** `modulefiles/deviate/2.2.3.lua`

## Usage on COSMOS-SENS

```bash
module use /scale/gr01/shared/common/modules
module load deviate/2.2.3
deviate [args...]
```

`module load` only defines the `deviate` command — it doesn't run anything by
itself, so it's safe inside a SLURM batch script. `deviate [args...]` runs
`singularity run /scale/gr01/shared/common/software/deviate/2.2.3/deviate_v2.2.3.sif [args...]`, i.e. whatever the image's
`%runscript` does with those args. For an interactive shell inside the image
instead, use:

```bash
apptainer shell /scale/gr01/shared/common/software/deviate/2.2.3/deviate_v2.2.3.sif
```

## Rebuilding this image

```bash
apptainer build deviate_v2.2.3.sif recipes/deviate/deviate.def
```
