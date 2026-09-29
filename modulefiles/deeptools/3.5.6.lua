help([[Tools for exploring deep-sequencing data (bamCoverage, bamCompare, computeMatrix, plotHeatmap, plotProfile, multiBamSummary, ...)

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
set_shell_function("deeptools",
    'singularity run -B/scale,/sw ' .. sif .. ' "$@"',
    'singularity run -B/scale,/sw ' .. sif .. ' $*')

whatis("Name         : deeptools singularity image")
whatis("Version      : deeptools 3.5.6")
whatis("Category     : Image")
whatis("Description  : Tools for exploring deep-sequencing data (bamCoverage, bamCompare, computeMatrix, plotHeatmap, plotProfile, multiBamSummary, ...)")
whatis("Maintainer   : petterst")
whatis("Installed on : 2026-09-29")
whatis("Installed by : petter")

family("images")
