# subread 2.1.1

High-performance read alignment, quantification and mutation discovery (featureCounts, subread-align, subjunc, subindel, exactSNP)

- **Contributed by:** petterst
- **Installed by:** petter
- **Added on:** 2026-09-11
- **GPU required:** no
- **Recipe:** `recipes/subread/subread.def`
- **Image location:** `/scale/gr01/shared/common/software/subread/2.1.1/subread_v2.1.1.sif`
- **Module file:** `modulefiles/subread/2.1.1.lua`

## Usage on COSMOS-SENS

```bash
module use /scale/gr01/shared/common/modules
module load subread/2.1.1
subread [args...]
```

`module load` only defines the `subread` command — it doesn't run anything by
itself, so it's safe inside a SLURM batch script. `subread [args...]` runs
`singularity run /scale/gr01/shared/common/software/subread/2.1.1/subread_v2.1.1.sif [args...]`, i.e. whatever the image's
`%runscript` does with those args. For an interactive shell inside the image
instead, use:

```bash
apptainer shell /scale/gr01/shared/common/software/subread/2.1.1/subread_v2.1.1.sif
```

## Rebuilding this image

```bash
apptainer build subread_v2.1.1.sif recipes/subread/subread.def
```
