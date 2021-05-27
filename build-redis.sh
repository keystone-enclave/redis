#!/bin/bash
make distclean
make CC=riscv64-unknown-linux-musl-gcc MALLOC=libc CFLAGS="-static-pie -static -static-libgcc -static-libstdc++" EXEEXT="-static-pie-static -static-libgcc -static-libstdc++" LDFLAGS="-I/usr/local/include/ -static" -j4
cp src/redis-server ../build/
cp redis.conf ../build/