help([[High-performance read alignment, quantification and mutation discovery (featureCounts, subread-align, subjunc, subindel, exactSNP)

Usage: module load defines the `subread` command below, it does NOT run
anything by itself, so this is safe to load inside a SLURM batch script.
  module load subread/2.1.1
  subread [args passed through to the container's entrypoint]
]])

local version = "2.1.1"
local base = pathJoin("/scale/gr01/shared/common/software/subread/2.1.1")
local sif = base .. "/subread_v" .. version .. ".sif"

-- Defines the `subread` command; runs nothing until you actually call it.
-- (A previous version of this template used execute{..., modeA={"load"}},
-- which ran the container immediately on `module load` itself — broken for
-- anything with an interactive entrypoint, and for any use inside a batch
-- job. Don't reintroduce that pattern.)
set_shell_function("subread",
    'singularity run -B/scale,/sw ' .. sif .. ' "$@"',
    'singularity run -B/scale,/sw ' .. sif .. ' $*')

whatis("Name         : subread singularity image")
whatis("Version      : subread 2.1.1")
whatis("Category     : Image")
whatis("Description  : High-performance read alignment, quantification and mutation discovery (featureCounts, subread-align, subjunc, subindel, exactSNP)")
whatis("Maintainer   : petterst")
whatis("Installed on : 2026-09-11")
whatis("Installed by : petter")

family("images")
