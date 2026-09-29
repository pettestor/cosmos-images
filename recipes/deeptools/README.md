# deeptools 3.5.6

Tools for exploring deep-sequencing data (bamCoverage, bamCompare, computeMatrix, plotHeatmap, plotProfile, multiBamSummary, ...)

- **Contributed by:** petterst
- **Installed by:** petter
- **Added on:** 2026-09-29
- **GPU required:** no
- **Recipe:** `recipes/deeptools/deeptools.def`
- **Image location:** `/scale/gr01/shared/common/software/deeptools/3.5.6/deeptools_v3.5.6.sif`
- **Module file:** `modulefiles/deeptools/3.5.6.lua`

## Usage on COSMOS-SENS

```bash
module use /scale/gr01/shared/common/modules
module load deeptools/3.5.6
deeptools [args...]
```

`module load` only defines the `deeptools` command — it doesn't run anything by
itself, so it's safe inside a SLURM batch script. `deeptools [args...]` runs
`singularity run /scale/gr01/shared/common/software/deeptools/3.5.6/deeptools_v3.5.6.sif [args...]`, i.e. whatever the image's
`%runscript` does with those args. For an interactive shell inside the image
instead, use:

```bash
apptainer shell /scale/gr01/shared/common/software/deeptools/3.5.6/deeptools_v3.5.6.sif
```

## Rebuilding this image

```bash
apptainer build deeptools_v3.5.6.sif recipes/deeptools/deeptools.def
```
