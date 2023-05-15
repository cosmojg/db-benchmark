#!/bin/bash
set -e

source ~/anaconda3/etc/profile.d/conda.sh # conda required for cudf

conda activate cudf
python3 -c 'import cudf; open("cudf/VERSION","w").write(cudf.__version__.split("+", 1)[0]); open("cudf/REVISION","w").write("");' > /dev/null
conda deactivate
