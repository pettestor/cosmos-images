help([[Basic R environment for single-cell RNA-seq analysis (Seurat)

Usage: module load defines the `r-singlecell` command below, it does NOT run
anything by itself, so this is safe to load inside a SLURM batch script.
  module load r-singlecell/1.0
  r-singlecell [args passed through to the container's entrypoint]
]])

local version = "1.0"
local base = pathJoin("/scale/gr01/shared/common/software/r-singlecell/1.0")
local sif = base .. "/r-singlecell_v" .. version .. ".sif"

-- Defines the `r-singlecell` command; runs nothing until you actually call it.
-- (A previous version of this template used execute{..., modeA={"load"}},
-- which ran the container immediately on `module load` itself — broken for
-- anything with an interactive entrypoint, and for any use inside a batch
-- job. Don't reintroduce that pattern.)
set_shell_function("r-singlecell",
    'singularity run -B/scale,/sw ' .. sif .. ' "$@"',
    'singularity run -B/scale,/sw ' .. sif .. ' $*')

whatis("Name         : r-singlecell singularity image")
whatis("Version      : r-singlecell 1.0")
whatis("Category     : Image")
whatis("Description  : Basic R environment for single-cell RNA-seq analysis (Seurat)")
whatis("Maintainer   : petterst")
whatis("Installed on : 2026-09-08")
whatis("Installed by : petter")

family("images")
