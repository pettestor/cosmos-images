help([[COMET: assign individual long reads (PacBio HiFi / ONT) from bulk tissue to their cell type of origin from CpG methylation, plus cell-type DMR calling

Requested by : Caterina Francesconi
Added by     : petter
Added on     : 2026-11-23

Usage: module load defines the `comet` command below, it does NOT run
anything by itself, so this is safe to load inside a SLURM batch script.
  module load comet/1.1.1
  comet [args passed through to the container's entrypoint]
]])

local version = "1.1.1"
local base = pathJoin("/scale/gr01/shared/common/software/comet/1.1.1")
local sif = base .. "/comet_v" .. version .. ".sif"

-- Defines the `comet` command; runs nothing until you actually call it.
-- (A previous version of this template used execute{..., modeA={"load"}},
-- which ran the container immediately on `module load` itself — broken for
-- anything with an interactive entrypoint, and for any use inside a batch
-- job. Don't reintroduce that pattern.)
-- env -u: Apptainer passes the host environment into the container, so a
-- loaded cluster module (e.g. SciPy-bundle setting PYTHONPATH) would make the
-- image's own Python/R load the cluster's incompatible packages. Dropped for
-- this command only; the user's shell is untouched.
set_shell_function("comet",
    'env -u PYTHONPATH -u PYTHONHOME -u R_LIBS -u R_LIBS_USER singularity run -B/scale,/sw ' .. sif .. ' "$@"',
    'env -u PYTHONPATH -u PYTHONHOME -u R_LIBS -u R_LIBS_USER singularity run -B/scale,/sw ' .. sif .. ' $*')

whatis("Name         : comet singularity image")
whatis("Version      : comet 1.1.1")
whatis("Category     : Image")
whatis("Description  : COMET: assign individual long reads (PacBio HiFi / ONT) from bulk tissue to their cell type of origin from CpG methylation, plus cell-type DMR calling")
whatis("Maintainer   : petterst")
whatis("Requested by : Caterina Francesconi")
whatis("Installed on : 2026-11-23")
whatis("Installed by : petter")
