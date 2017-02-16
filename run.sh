#!/bin/bash

nasm -f bin bootloader.asm -o bootloader.bin
qemu-system-i386 bootloader.bin
