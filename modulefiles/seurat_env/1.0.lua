help([[Single-cell RNA-seq environment (Seurat v5, SingleR, harmony, slingshot)

Requested by : not recorded
Added by     : petter
Added on     : 2026-09-08

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
-- env -u: Apptainer passes the host environment into the container, so a
-- loaded cluster module (e.g. SciPy-bundle setting PYTHONPATH) would make the
-- image's own Python/R load the cluster's incompatible packages. Dropped for
-- this command only; the user's shell is untouched.
set_shell_function("seurat_env",
    'env -u PYTHONPATH -u PYTHONHOME -u R_LIBS -u R_LIBS_USER singularity run -B/scale,/sw ' .. sif .. ' "$@"',
    'env -u PYTHONPATH -u PYTHONHOME -u R_LIBS -u R_LIBS_USER singularity run -B/scale,/sw ' .. sif .. ' $*')

whatis("Name         : seurat_env singularity image")
whatis("Version      : seurat_env 1.0")
whatis("Category     : Image")
whatis("Description  : Single-cell RNA-seq environment (Seurat v5, SingleR, harmony, slingshot)")
whatis("Maintainer   : andreasb")
whatis("Requested by : not recorded")
whatis("Installed on : 2026-09-08")
whatis("Installed by : petter")

family("images")
