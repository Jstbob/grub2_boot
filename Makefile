qemu: kernel.img
	qemu-system-i386.exe -kernel kernel.img -m 256M

kernel.img: boot.o kernel.o
	i686-elf-ld.exe -T linker.ld -o kernel.img boot.o kernel.o

boot.o:
	i686-elf-gcc.exe -o boot.o boot.c

kernel.o:
	i686-elf-gcc.exe -o kernel.o kernel.c
	