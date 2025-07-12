########### ROCProfiler ###########

# one-time setup 
sudo locale-gen en_US.UTF-8
sudo update-locale LANG=en_US.UTF-8
sudo apt-get update
sudo apt-get install -y locales
sudo locale-gen en_US.UTF-8
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
localedef -i en_US -f UTF-8 en_US.UTF-8 || true

# installation
ROCProfiler
`sudo apt install rocprofiler-compute`
pip install -r /opt/rocm-6.4.1/libexec/rocprofiler-compute/requirements.txt
apt-get install locales
locale-gen en_US.UTF-8

rocprof-compute profile -n transpose_matmul --no-roof -- python test_python.py
rocprof-compute profile -n transpose_matmul --no-roof -- /shared/amdgpu/home/tech_ops_amd_xqh/simran/miniconda3/bin/python test_python.py

LANG=en_US.UTF-8 LC_ALL=en_US.UTF-8 rocprof-compute analyze -p ./ --gui
rocprof-compute analyze -p workloads/transpose_matmul/MI300/ --gui


########### ROCProfiler V3###########


mkdir -p rocprofiler-setup
cd rocprofiler-setup

git clone https://github.com/ROCm/rocprofiler-sdk.git rocprofiler-sdk-source
apt-get install libdw-dev
cmake -B rocprofiler-sdk-build -DCMAKE_INSTALL_PREFIX=/opt/rocm -DCMAKE_PREFIX_PATH=/opt/rocm rocprofiler-sdk-source
cmake --build rocprofiler-sdk-build --target all --parallel $(nproc)
cmake --build rocprofiler-sdk-build --target install

wget https://github.com/ROCm/rocprof-trace-decoder/releases/download/0.1.1/rocprof-trace-decoder-ubuntu-24.04-0.1.1-Linux.deb
sudo dpkg -i rocprof-trace-decoder-ubuntu-24.04-0.1.1-Linux.deb

git clone https://github.com/ROCm/aqlprofile.git
cd aqlprofile
./build.sh
cd build
sudo make install
cd ../../..
rm -rf rocprofiler-setup

# on MI325
rocprofv3 --att=true \
          --att-library-path /opt/rocm-6.4.1/lib \
          -d transpose_matmul \
          -- python3 test_python.py

# on MI350
rocprofv3 --att=true \
          --att-library-path /opt/rocm-6.5.0/lib \
          -d transpose_matmul \
          -- python3 test_python.py

