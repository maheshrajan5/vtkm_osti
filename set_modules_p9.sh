#!/bin/bash                                                                     

# July 16 2019 after talking to Paul copying his bashrc to get modules working  
# dev module paths                                                              
if [[ $(hostname) = xx-fe1.cluster ]]; then
  unset MODULEPATH
  module use /ecp/sw/xx-fe1/modulefiles/nmc/lmod/linux-centos7-x86_64/Core
  module use /ecp/sw/xx-fe1/modulefiles/manual/lmod/linux-centos7-x86_64/Core
  module use /ecp/sw/xx-fe1/modulefiles/py/lmod/linux-centos7-x86_64/Core
elif  [[ $(hostname) == "p90"* ]]; then
  unset MODULEPATH
  export MODULEPATH=/etc/modulefiles
  module use /ecp/sw/ecp-p9-4v100/modulefiles/nmc/lmod/linux-centos7-ppc64le/Core
  module use /ecp/sw/ecp-p9-4v100/modulefiles/manual/lmod/linux-centos7-ppc64le\Core
  module use /ecp/sw/ecp-p9-4v100/modulefiles/py/lmod/linux-centos7-ppc64le/Core
fi

module load gcc/8.3.0
module load openmpi/3.1.4
module load cmake/3.14.5

module list
