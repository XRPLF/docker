#!/bin/bash
set -e

# Activate Holy Build Box environment.
# source /hbb_exe/activate

set -x
source /opt/rh/devtoolset-10/enable

export PATH=$PATH:/hbb/bin
export BOOST_ROOT=/boost_1_75_0
export OPENSSL_ROOT_DIR=/opt/local/openssl

cmake -S /source -B /source/build -DOPENSSL_ROOT_DIR=$OPENSSL_ROOT_DIR
cmake --build /source/build
