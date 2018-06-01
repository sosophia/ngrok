# CUDA 9.2 & CuDNN 7.1.4

wget https://developer.nvidia.com/compute/cuda/9.2/Prod/local_installers/cuda-repo-ubuntu1710-9-2-local_9.2.88-1_amd64
sudo dpkg -i cuda-repo-ubuntu1710-9-2-local_9.2.88-1_amd64
sudo apt-key add /var/cuda-repo-9-2-local/7fa2af80.pub
sudo apt-get update
sudo apt-get install cuda



sudo apt install gcc-6
sudo apt install g++-6
sudo ln -s /usr/bin/gcc-6 /usr/local/cuda-9.2/bin/gcc
sudo ln -s /usr/bin/g++-6 /usr/local/cuda-9.2/bin/g++

cd ~
# CuDNN lib
sudo tar -xzf cudnn-9.2-linux-x64-v7.1.tgz -C /usr/local
#CuDNN-dev-lib
sudo dpkg -i libcudnn7-dev_7.1.4.18-1+cuda9.2_amd64.deb
sudo ldconfig

export PATH=/usr/local/cuda-9.2/bin${PATH:+:${PATH}}
export LD_LIBRARY_PATH=/usr/local/cuda-9.2/lib64${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}


# For Anaconda 2
cd /tmp && wget https://repo.continuum.io/archive/Anaconda2-5.1.0-Linux-x86_64.sh
bash Anaconda2-5.1.0-Linux-x86_64.sh

# For Miniconda3
# wget https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh
# bash Miniconda3-latest-Linux-x86_64.sh

source ~/.bashrc
cd ~
