# rasusa 5.1.0

Randomly subsample sequencing reads or alignments to a target depth or number of reads/bases

- **Requested by:** Anaïs Larue
- **Contributed by:** petterst
- **Installed by:** petter
- **Added on:** 2026-10-02
- **GPU required:** no
- **Recipe:** `recipes/rasusa/rasusa.def`
- **Image location:** `/scale/gr01/shared/common/software/rasusa/5.1.0/rasusa_v5.1.0.sif`
- **Module file:** `modulefiles/rasusa/5.1.0.lua`

## Usage on COSMOS-SENS

```bash
module use /scale/gr01/shared/common/modules
module load rasusa/5.1.0
rasusa [args...]
```

`module load` only defines the `rasusa` command — it doesn't run anything by
itself, so it's safe inside a SLURM batch script. `rasusa [args...]` runs
`singularity run /scale/gr01/shared/common/software/rasusa/5.1.0/rasusa_v5.1.0.sif [args...]`, i.e. whatever the image's
`%runscript` does with those args. For an interactive shell inside the image
instead, use:

```bash
apptainer shell /scale/gr01/shared/common/software/rasusa/5.1.0/rasusa_v5.1.0.sif
```

## Rebuilding this image

```bash
apptainer build rasusa_v5.1.0.sif recipes/rasusa/rasusa.def
```
