help([[Ambient RNA removal for single-cell data

Usage: module load defines the `cellbender` command below, it does NOT run
anything by itself, so this is safe to load inside a SLURM batch script.
  module load cellbender/0.3.1
  cellbender [args passed through to the container's entrypoint]
]])

local version = "0.3.1"
local base = pathJoin("/scale/gr01/shared/common/software/cellbender/0.3.1")
local sif = base .. "/cellbender_v" .. version .. ".sif"

-- Defines the `cellbender` command; runs nothing until you actually call it.
-- (A previous version of this template used execute{..., modeA={"load"}},
-- which ran the container immediately on `module load` itself — broken for
-- anything with an interactive entrypoint, and for any use inside a batch
-- job. Don't reintroduce that pattern.)
set_shell_function("cellbender",
    'singularity run -B/scale,/sw --nv ' .. sif .. ' "$@"',
    'singularity run -B/scale,/sw --nv ' .. sif .. ' $*')

whatis("Name         : cellbender singularity image")
whatis("Version      : cellbender 0.3.1")
whatis("Category     : Image")
whatis("Description  : Ambient RNA removal for single-cell data")
whatis("Maintainer   : petterst")
whatis("Installed on : 2026-09-08")
whatis("Installed by : petter")

family("images")
