help([[Ambient RNA removal for single-cell data]])

local version = "0.3.1"
local base = pathJoin("/scale/gr01/shared/common/software/cellbender/0.3.1")

-- this happens at load
execute{cmd="singularity run -B/scale,/sw --nv ".. base .. "/cellbender_v".. version ..".sif", modeA={"load"}}

whatis("Name         : cellbender singularity image")
whatis("Version      : cellbender 0.3.1")
whatis("Category     : Image")
whatis("Description  : Ambient RNA removal for single-cell data")
whatis("Installed on : 2026-09-07")
whatis("Installed by : petterst")

family("images")
