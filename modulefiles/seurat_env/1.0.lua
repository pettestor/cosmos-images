help([[Single-cell RNA-seq environment (Seurat v5, SingleR, harmony, slingshot)]])

local version = "1.0"
local base = pathJoin("/scale/gr01/shared/common/software/seurat_env/1.0")

-- this happens at load
execute{cmd="singularity run -B/scale,/sw ".. base .. "/seurat_env_v".. version ..".sif", modeA={"load"}}

whatis("Name         : seurat_env singularity image")
whatis("Version      : seurat_env 1.0")
whatis("Category     : Image")
whatis("Description  : Single-cell RNA-seq environment (Seurat v5, SingleR, harmony, slingshot)")
whatis("Maintainer   : andreasb")
whatis("Installed on : 2026-09-08")
whatis("Installed by : petter")

family("images")
