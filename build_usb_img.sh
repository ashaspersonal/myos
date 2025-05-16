#!/bin/bash
dd if=/dev/zero of=myos.img bs=1M count=64
mkfs.fat myos.img
mmd -i myos.img ::/boot
mcopy -i myos.img kernel.bin ::/boot/kernel.bin
