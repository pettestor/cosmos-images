# mahi-mahi 1.0.0

Mahi-mahi (Oxford Nanopore): tandem repeat genotyping from aligned long-read nanopore data (R10), with per-allele VCF, per-read TSV and tagged BAM

- **Requested by:** Caterina Francesconi
- **Contributed by:** petterst
- **Installed by:** petter
- **Added on:** 2026-11-23
- **GPU required:** no
- **Recipe:** `recipes/mahi-mahi/mahi-mahi.def`
- **Image location:** `/scale/gr01/shared/common/software/mahi-mahi/1.0.0/mahi-mahi_v1.0.0.sif`
- **Module file:** `modulefiles/mahi-mahi/1.0.0.lua`

## Usage on COSMOS-SENS

```bash
module use /scale/gr01/shared/common/modules
module load mahi-mahi/1.0.0
mahi-mahi [args...]
```

`module load` only defines the `mahi-mahi` command — it doesn't run anything by
itself, so it's safe inside a SLURM batch script. `mahi-mahi [args...]` runs
`singularity run /scale/gr01/shared/common/software/mahi-mahi/1.0.0/mahi-mahi_v1.0.0.sif [args...]`, i.e. whatever the image's
`%runscript` does with those args. For an interactive shell inside the image
instead, use:

```bash
apptainer shell /scale/gr01/shared/common/software/mahi-mahi/1.0.0/mahi-mahi_v1.0.0.sif
```

## Rebuilding this image

```bash
apptainer build mahi-mahi_v1.0.0.sif recipes/mahi-mahi/mahi-mahi.def
```
