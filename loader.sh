sudo apt update && sudo apt upgrade -y
sudo apt install gnuradio gr-fosphor -y

mkdir $HOME/tmp
cd $HOME/tmp
wget http://registrationcenter.intel.com/irc_nas/4181/opencl_runtime_14.2_x64_4.5.0.8.tgz
tar xf opencl_runtime_14.2_x64_4.5.0.8.tgz
cd pset_opencl_runtime_14.1_x64_4.5.0.8/rpm
sudo apt install alien -y
alien --to-tgz opencl-1.2-base-pset-4.5.0.8-1.noarch.rpm
tar xf opencl-1.2-base-4.5.0.8.tgz
sudo mv opt/intel /opt
rm -rf opt
alien --to-tgz opencl-1.2-intel-cpu-4.5.0.8-1.x86_64.rpm
tar xf opencl-1.2-intel-cpu-4.5.0.8.tgz
sudo mkdir -p /etc/OpenCL/vendors
sudo mv opt/intel/opencl-1.2-4.5.0.8/etc/intel64.icd /etc/OpenCL/vendors/
mkdir -p /opt/intel/opencl-1.2-4.5.0.8/lib64/
sudo mv opt/intel/opencl-1.2-4.5.0.8/lib64/* /opt/intel/opencl-1.2-4.5.0.8/lib64/
rm -rf opt    
