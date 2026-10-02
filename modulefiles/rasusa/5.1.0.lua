help([[Randomly subsample sequencing reads or alignments to a target depth or number of reads/bases

Requested by : Anaïs Larue
Added by     : petter
Added on     : 2026-10-02

Usage: module load defines the `rasusa` command below, it does NOT run
anything by itself, so this is safe to load inside a SLURM batch script.
  module load rasusa/5.1.0
  rasusa [args passed through to the container's entrypoint]
]])

local version = "5.1.0"
local base = pathJoin("/scale/gr01/shared/common/software/rasusa/5.1.0")
local sif = base .. "/rasusa_v" .. version .. ".sif"

-- Defines the `rasusa` command; runs nothing until you actually call it.
-- (A previous version of this template used execute{..., modeA={"load"}},
-- which ran the container immediately on `module load` itself — broken for
-- anything with an interactive entrypoint, and for any use inside a batch
-- job. Don't reintroduce that pattern.)
-- env -u: Apptainer passes the host environment into the container, so a
-- loaded cluster module (e.g. SciPy-bundle setting PYTHONPATH) would make the
-- image's own Python/R load the cluster's incompatible packages. Dropped for
-- this command only; the user's shell is untouched.
set_shell_function("rasusa",
    'env -u PYTHONPATH -u PYTHONHOME -u R_LIBS -u R_LIBS_USER singularity run -B/scale,/sw ' .. sif .. ' "$@"',
    'env -u PYTHONPATH -u PYTHONHOME -u R_LIBS -u R_LIBS_USER singularity run -B/scale,/sw ' .. sif .. ' $*')

whatis("Name         : rasusa singularity image")
whatis("Version      : rasusa 5.1.0")
whatis("Category     : Image")
whatis("Description  : Randomly subsample sequencing reads or alignments to a target depth or number of reads/bases")
whatis("Maintainer   : petterst")
whatis("Requested by : Anaïs Larue")
whatis("Installed on : 2026-10-02")
whatis("Installed by : petter")

family("images")
