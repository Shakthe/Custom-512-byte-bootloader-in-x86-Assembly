# 🧵 Custom Bootloader in Assembly

This is a 512-byte minimalist bootloader written in x86 Assembly. It runs directly on BIOS using NASM and QEMU, printing text and handling basic I/O.

---

## 🛠 Features

- Prints messages using BIOS interrupts (INT 0x10)
- Interactive (can be extended to handle keyboard input)
- Assembled with NASM
- Run using QEMU emulator

---

## 📦 Requirements

- NASM (Netwide Assembler)
- QEMU (for emulation)
- Linux/WSL/macOS terminal (or similar environment)

---

## 🚀 Build & Run the Code

```bash
make          # builds disk.img from bootloader.asm
make run      # launches QEMU with the bootloader
make clean    # removes disk.img
```

---

## 💡 Notes

- The final binary (`disk.img`) must be exactly 512 bytes.
- BIOS bootloaders always end with `0xAA55` signature.
- You can modify the `message db` to display your own text.
