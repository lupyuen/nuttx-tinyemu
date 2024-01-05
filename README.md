# Apache NuttX RTOS in the Web Browser: TinyEMU with VirtIO

Apache NuttX RTOS is a tiny operating system for 64-bit RISC-V Machines and many other platforms. (Arm, x64, ESP32, ...)

[TinyEMU](https://github.com/fernandotcl/TinyEMU) is a barebones RISC-V Emulator that runs in a [Web Browser](https://www.barebox.org/jsbarebox/?graphic=1). (Thanks to WebAssembly)

Can we boot NuttX in a Web Browser, with a little help from TinyEMU? Let's find out!

_Why are we doing this?_

We might run NuttX in a Web Browser and emulate the Ox64 BL808 RISC-V SBC, for quicker testing.

(QEMU Emulator is a bit too complex to customise for Ox64)

# Install TinyEMU

To install TinyEMU on macOS:

```bash
brew tap fernandotcl/homebrew-fernandotcl
brew install --HEAD fernandotcl/fernandotcl/tinyemu
temu https://bellard.org/jslinux/buildroot-riscv64.cfg
```

Or build TinyEMU on Ubuntu and macOS [with these steps](https://github.com/lupyuen/TinyEMU/blob/master/.github/workflows/ci.yml).

TODO: Generate the Emscripten JavaScript via [GitHub Actions](https://github.com/lupyuen/TinyEMU/blob/master/.github/workflows/ci.yml)

# RISC-V Addresses for TinyEMU

TinyEMU is hardcoded to run at these RISC-V Addresses (yep it's really barebones): [riscv_machine.c](https://github.com/fernandotcl/TinyEMU/blob/master/riscv_machine.c#L66-L82)

```c
#define LOW_RAM_SIZE   0x00010000 /* 64KB */
#define RAM_BASE_ADDR  0x80000000
#define CLINT_BASE_ADDR 0x02000000
#define CLINT_SIZE      0x000c0000
#define DEFAULT_HTIF_BASE_ADDR 0x40008000
#define VIRTIO_BASE_ADDR 0x40010000
#define VIRTIO_SIZE      0x1000
#define VIRTIO_IRQ       1
#define PLIC_BASE_ADDR 0x40100000
#define PLIC_SIZE      0x00400000
#define FRAMEBUFFER_BASE_ADDR 0x41000000

#define RTC_FREQ 10000000
#define RTC_FREQ_DIV 16 /* arbitrary, relative to CPU freq to have a
                           10 MHz frequency */
```

Thus we shall compile NuttX Kernel to boot at 0x8000_0000. (We'll borrow the NuttX Port for QEMU 64-bit RISC-V)

# TinyEMU Config

We configure a Virtual Machine for TinyEMU like this: [buildroot-riscv64.cfg](https://bellard.org/jslinux/buildroot-riscv64.cfg)

```json
/* VM configuration file */
{
    version: 1,
    machine: "riscv64",
    memory_size: 256,
    bios: "bbl64.bin",
    kernel: "kernel-riscv64.bin",
    cmdline: "loglevel=3 swiotlb=1 console=hvc0 root=root rootfstype=9p rootflags=trans=virtio ro TZ=${TZ}",
    fs0: { file: "https://vfsync.org/u/os/buildroot-riscv64" },
    eth0: { driver: "user" },
}
```

`bbl64.bin` is the [Barebox Bootloader](https://www.barebox.org). (Similar to U-Boot)

_Will NuttX go into `bios` or `kernel`?_

According to [copy_bios](https://github.com/fernandotcl/TinyEMU/blob/master/riscv_machine.c#L753-L812), the BIOS is mandatory, the Kernel is optional.

Thus we put NuttX Kernel into `bios` and leave `kernel` empty.

[copy_bios](https://github.com/fernandotcl/TinyEMU/blob/master/riscv_machine.c#L753-L812) will load NuttX Kernel at RAM_BASE_ADDR (0x8000_0000).

# HTIF Console

TODO

How do tohost and fromhost work?

https://github.com/riscv-software-src/riscv-isa-sim/issues/364#issuecomment-607657754

Handle HTIF Command:

https://github.com/fernandotcl/TinyEMU/blob/master/riscv_machine.c#L129-L153

htif_write:

https://github.com/fernandotcl/TinyEMU/blob/master/riscv_machine.c#L154-L178

# VirtIO

TODO

knetnsh64:

https://github.com/apache/nuttx/blob/master/boards/risc-v/qemu-rv/rv-virt/configs/knetnsh64/defconfig#L52
