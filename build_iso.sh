#!/bin/bash
mkdir -p isodir/boot/grub
cp kernel.bin isodir/boot/kernel.bin
echo 'set timeout=0
set default=0
menuentry "MyOS" {
  multiboot /boot/kernel.bin
  boot
}' > isodir/boot/grub/grub.cfg
grub-mkrescue -o myos.iso isodir
