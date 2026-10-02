help([[Tools for exploring deep-sequencing data (bamCoverage, bamCompare, computeMatrix, plotHeatmap, plotProfile, multiBamSummary, ...)

Requested by : not recorded
Added by     : petter
Added on     : 2026-09-29

Usage: module load defines the `deeptools` command below, it does NOT run
anything by itself, so this is safe to load inside a SLURM batch script.
  module load deeptools/3.5.6
  deeptools [args passed through to the container's entrypoint]
]])

local version = "3.5.6"
local base = pathJoin("/scale/gr01/shared/common/software/deeptools/3.5.6")
local sif = base .. "/deeptools_v" .. version .. ".sif"

-- Defines the `deeptools` command; runs nothing until you actually call it.
-- (A previous version of this template used execute{..., modeA={"load"}},
-- which ran the container immediately on `module load` itself — broken for
-- anything with an interactive entrypoint, and for any use inside a batch
-- job. Don't reintroduce that pattern.)
-- env -u: Apptainer passes the host environment into the container, so a
-- loaded cluster module (e.g. SciPy-bundle setting PYTHONPATH) would make the
-- image's own Python/R load the cluster's incompatible packages. Dropped for
-- this command only; the user's shell is untouched.
set_shell_function("deeptools",
    'env -u PYTHONPATH -u PYTHONHOME -u R_LIBS -u R_LIBS_USER singularity run -B/scale,/sw ' .. sif .. ' "$@"',
    'env -u PYTHONPATH -u PYTHONHOME -u R_LIBS -u R_LIBS_USER singularity run -B/scale,/sw ' .. sif .. ' $*')

whatis("Name         : deeptools singularity image")
whatis("Version      : deeptools 3.5.6")
whatis("Category     : Image")
whatis("Description  : Tools for exploring deep-sequencing data (bamCoverage, bamCompare, computeMatrix, plotHeatmap, plotProfile, multiBamSummary, ...)")
whatis("Maintainer   : petterst")
whatis("Requested by : not recorded")
whatis("Installed on : 2026-09-29")
whatis("Installed by : petter")

family("images")
