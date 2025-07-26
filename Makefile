all: bootloader

bootloader:
	nasm -f bin bootloader.asm -o disk.img

run: bootloader
	qemu-system-i386 -drive format=raw,file=disk.img

clean:
	rm -f disk.img
