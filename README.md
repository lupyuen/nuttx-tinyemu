# Apache NuttX RTOS in the Web Browser: TinyEMU with VirtIO

Apache NuttX RTOS is a tiny operating system for 64-bit RISC-V Machines and many other platforms. (Arm, x64, ESP32, ...)

[TinyEMU](https://github.com/fernandotcl/TinyEMU) is a barebones RISC-V Emulator that runs in a [Web Browser](https://www.barebox.org/jsbarebox/?graphic=1). (Thanks to WebAssembly)

Can we boot NuttX in a Web Browser, with a little help from TinyEMU? Let's find out!

# TODO

```bash
brew tap fernandotcl/homebrew-fernandotcl
brew install --HEAD fernandotcl/fernandotcl/tinyemu
temu https://bellard.org/jslinux/buildroot-riscv64.cfg
```

Build on Ubuntu and macOS:

https://github.com/lupyuen/TinyEMU/blob/master/.github/workflows/ci.yml

RISC-V Addresses for TinyEMU:

https://github.com/fernandotcl/TinyEMU/blob/master/riscv_machine.c#L66-L82
