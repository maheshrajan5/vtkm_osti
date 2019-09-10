8/20/2019
As per Dave Montoya's instruction developing GitLab CI for VTKM and sharing the yaml files for Cori and NMC with VTKM team
Followed the instructions for building and testing VTKM using
http://m.vtk.org/images/c/c8/VTKmUsersGuide.pdf

git  clone  https :// gitlab.kitware.com/vtk/vtk -m.git
mkdir  vtkm -build
cd vtkm -build
cmake -gui  ../vtk -m
make -j
make  test
----------------------------------------------------------
September 9 2019; following Paul's set up of accoutn for Robert Maynard
Change the gitlab_ci.yml from trying to tun unsuccessfuly on ecp_864-64 with scheduler_parameters to the new NMC_FE1_SLURM_PARAMETERS
