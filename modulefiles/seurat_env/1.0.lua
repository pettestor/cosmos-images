help([[Single-cell RNA-seq environment (Seurat v5, SingleR, harmony, slingshot)

Usage: module load defines the `seurat_env` command below, it does NOT run
anything by itself, so this is safe to load inside a SLURM batch script.
  module load seurat_env/1.0
  seurat_env [args passed through to the container's entrypoint]
]])

local version = "1.0"
local base = pathJoin("/scale/gr01/shared/common/software/seurat_env/1.0")
local sif = base .. "/seurat_env_v" .. version .. ".sif"

-- Defines the `seurat_env` command; runs nothing until you actually call it.
-- (A previous version of this template used execute{..., modeA={"load"}},
-- which ran the container immediately on `module load` itself — broken for
-- anything with an interactive entrypoint, and for any use inside a batch
-- job. Don't reintroduce that pattern.)
set_shell_function("seurat_env",
    'singularity run -B/scale,/sw ' .. sif .. ' "$@"',
    'singularity run -B/scale,/sw ' .. sif .. ' $*')

whatis("Name         : seurat_env singularity image")
whatis("Version      : seurat_env 1.0")
whatis("Category     : Image")
whatis("Description  : Single-cell RNA-seq environment (Seurat v5, SingleR, harmony, slingshot)")
whatis("Maintainer   : andreasb")
whatis("Installed on : 2026-09-08")
whatis("Installed by : petter")

family("images")
