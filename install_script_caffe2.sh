# this will install w/ python 3.6.5
conda create -yn dnt && source activate dnt
conda install -y \
    future \
    gflags \
    glog \
    leveldb \
    mkl \
    mkl-include \
    numpy \
    opencv \
    protobuf \
    six

# Clone Caffe2's source code from our Github repository
cd ~ && git clone --recursive https://github.com/pytorch/pytorch.git && cd pytorch
git submodule update --init

# Create a directory to put Caffe2's build files in
rm -rf build && mkdir build && cd build

# Configure Caffe2's build
# This looks for packages on your machine and figures out which functionality
# to include in the Caffe2 installation. The output of this command is very
# useful in debugging.

# FORCE CMAKE compiler
export CC=/usr/bin/gcc-6
export CXX=/usr/bin/g++-6
cmake -DCMAKE_PREFIX_PATH=~/anaconda2/envs/dnt -DCMAKE_INSTALL_PREFIX=~/anaconda2/envs/dnt ..

# check python version and dir
which python
whereis python

# Inspection before running this
# Compile, link, and install Caffe2
# make install -j2
