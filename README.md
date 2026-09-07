# cosmos-images

Shared catalog of Apptainer/Singularity images (`.sif`) for COSMOS-SENS,
LUNARC's air-gapped HPC system for sensitive data.

This repo holds the small, versioned pieces of the catalog — `.def` recipes,
generated Lua module files, and `manifest.yaml`. The `.sif` binaries
themselves are never committed here; they live only on COSMOS-SENS shared
storage (`/scale/gr01/shared/common/software/...`), built and deployed via
the [`scc_add_image`](https://github.com/pettestor/scc_add_image) tool.

## Layout

```
manifest.yaml               # one entry per (name, version) — script-managed
recipes/<name>/
    <name>.def               # the build recipe, copied in verbatim
    VERSION                  # plain text version string
    README.md                # generated usage notes for this image
modulefiles/<name>/<version>.lua   # generated Lua module, COSMOS-SENS path baked in
```

## Adding an image

Images are added via the coordinator script, not by hand-editing this repo.
See [`scc_add_image`](https://github.com/pettestor/scc_add_image) for usage.
The script generates the module/README/manifest entry, copies the `.def` in,
and prints the `git checkout -b` / `commit` / `push` steps to open a PR here.

## Using an image on COSMOS-SENS

```bash
module use /scale/gr01/shared/common/modules
module load <name>/<version>
```
