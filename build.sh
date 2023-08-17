#!/bin/bash

srcf=$1
name=$(basename $srcf .asm)
mkdir -p bin
nasm -f elf -o bin/$name.o $srcf
ld -m elf_i386 -s -o bin/$name bin/$name.o