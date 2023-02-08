#!/bin/bash -eu

# build project
# e.g.
#make clean
./Configure --prefix=/opt/openssl --openssldir=/usr/local/ssl
make install

$CXX $CXXFLAGS -std=c++11 -Ilib/ \
    $SRC/test/fuzz_punycode_decode.c -o $OUT/fuzz_punycode_decode \
    $LIB_FUZZING_ENGIN /opt/openssl

# ./configure
# make -j$(nproc) all

# build fuzzers
# e.g.
# $CXX $CXXFLAGS -std=c++11 -Iinclude \
#     /path/to/name_of_fuzzer.cc -o $OUT/name_of_fuzzer \
#     $LIB_FUZZING_ENGINE /path/to/library.a
