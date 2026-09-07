help([[Basic R environment for single-cell RNA-seq analysis (Seurat)]])

local version = "1.0"
local base = pathJoin("/scale/gr01/shared/common/software/r-singlecell/1.0")

-- this happens at load
execute{cmd="singularity run -B/scale,/sw ".. base .. "/r-singlecell_v".. version ..".sif", modeA={"load"}}

whatis("Name         : r-singlecell singularity image")
whatis("Version      : r-singlecell 1.0")
whatis("Category     : Image")
whatis("Description  : Basic R environment for single-cell RNA-seq analysis (Seurat)")
whatis("Installed on : 2026-09-07")
whatis("Installed by : petterst")

family("images")
