#!/bin/bash
make distclean
make CC=riscv64-unknown-linux-musl-gcc MALLOC=libc CFLAGS="-g -static -l-libgcc -static-libstdc++" EXEEXT="-static-pie-static -static-libgcc -static-libstdc++" LDFLAGS="-I/usr/local/include/ -static" -j4
cp src/redis-server ~/keystone/build/overlay/root/
cp src/redis-cli ~/keystone/build/overlay/root/
cp redis.conf ~/keystone/build/overlay/root/
cp script.redis ~/keystone/build/overlay/root/