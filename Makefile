all:
	@echo "Compiling kernel..."
	mkdir -p build
	gcc -m32 -ffreestanding -c kernel/main.c -o build/kernel.o
	ld -m elf_i386 -T linker.ld -o kernel.bin build/kernel.o
