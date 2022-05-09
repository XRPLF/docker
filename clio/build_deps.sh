#!/usr/bin/env bash

source /opt/rh/devtoolset-10/enable
export PATH=$PATH:/hbb/bin

curl -OJL https://boostorg.jfrog.io/artifactory/main/release/1.75.0/source/boost_1_75_0.zip
unzip boost_1_75_0.zip
cd boost_1_75_0
./bootstrap.sh
./b2 -j$(nproc)

git clone https://github.com/openssl/openssl/
cd openssl
git checkout OpenSSL_1_1_1o

SSLDIR=$(openssl version -d | cut -d: -f2 | tr -d [:space:]\")
./config -fPIC --prefix=/opt/local/openssl --openssldir=${SSLDIR} zlib shared
make -j$(nproc)
make install_sw
