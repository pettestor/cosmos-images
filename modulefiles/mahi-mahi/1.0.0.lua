help([[Mahi-mahi (Oxford Nanopore): tandem repeat genotyping from aligned long-read nanopore data (R10), with per-allele VCF, per-read TSV and tagged BAM

Requested by : Caterina Francesconi
Added by     : petter
Added on     : 2026-11-23

Usage: module load defines the `mahi-mahi` command below, it does NOT run
anything by itself, so this is safe to load inside a SLURM batch script.
  module load mahi-mahi/1.0.0
  mahi-mahi [args passed through to the container's entrypoint]
]])

local version = "1.0.0"
local base = pathJoin("/scale/gr01/shared/common/software/mahi-mahi/1.0.0")
local sif = base .. "/mahi-mahi_v" .. version .. ".sif"

-- Defines the `mahi-mahi` command; runs nothing until you actually call it.
-- (A previous version of this template used execute{..., modeA={"load"}},
-- which ran the container immediately on `module load` itself — broken for
-- anything with an interactive entrypoint, and for any use inside a batch
-- job. Don't reintroduce that pattern.)
-- env -u: Apptainer passes the host environment into the container, so a
-- loaded cluster module (e.g. SciPy-bundle setting PYTHONPATH) would make the
-- image's own Python/R load the cluster's incompatible packages. Dropped for
-- this command only; the user's shell is untouched.
set_shell_function("mahi-mahi",
    'env -u PYTHONPATH -u PYTHONHOME -u R_LIBS -u R_LIBS_USER singularity run -B/scale,/sw ' .. sif .. ' "$@"',
    'env -u PYTHONPATH -u PYTHONHOME -u R_LIBS -u R_LIBS_USER singularity run -B/scale,/sw ' .. sif .. ' $*')

whatis("Name         : mahi-mahi singularity image")
whatis("Version      : mahi-mahi 1.0.0")
whatis("Category     : Image")
whatis("Description  : Mahi-mahi (Oxford Nanopore): tandem repeat genotyping from aligned long-read nanopore data (R10), with per-allele VCF, per-read TSV and tagged BAM")
whatis("Maintainer   : petterst")
whatis("Requested by : Caterina Francesconi")
whatis("Installed on : 2026-11-23")
whatis("Installed by : petter")
