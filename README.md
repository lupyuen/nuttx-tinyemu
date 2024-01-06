# Apache NuttX RTOS in the Web Browser: TinyEMU with VirtIO

[__NuttX on TinyEMU Demo__](https://lupyuen.github.io/nuttx-tinyemu/)

Apache NuttX RTOS is a tiny operating system for 64-bit RISC-V Machines and many other platforms. (Arm, x64, ESP32, ...)

[TinyEMU](https://github.com/fernandotcl/TinyEMU) is a barebones RISC-V Emulator that runs in a [Web Browser](https://www.barebox.org/jsbarebox/?graphic=1). (Thanks to WebAssembly)

Can we boot NuttX in a Web Browser, with a little help from TinyEMU? Let's find out!

_Why are we doing this?_

We might run NuttX in a Web Browser and emulate the Ox64 BL808 RISC-V SBC. Which is great for testing NuttX Apps like [Nim Blinky LED](https://lupyuen.github.io/articles/nim)! Or even LVGL Apps with VirtIO Framebuffer?

(Sorry QEMU Emulator is a bit too complex to customise for Ox64)

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

```text
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

# Build NuttX for TinyEMU

NuttX for QEMU RISC-V is already configured to boot at 0x8000_0000: [ld.script](https://github.com/lupyuen2/wip-pinephone-nuttx/blob/tinyemu/boards/risc-v/qemu-rv/rv-virt/scripts/ld.script#L21-L27)

```text
SECTIONS
{
  . = 0x80000000;
  .text :
    {
      _stext = . ;
```

So we build NuttX for QEMU RISC-V (64-bit, Flat Mode)...

```bash
## Download WIP NuttX
git clone --branch tinyemu https://github.com/lupyuen2/wip-pinephone-nuttx nuttx
git clone --branch tinyemu https://github.com/lupyuen2/wip-pinephone-nuttx-apps apps

## Configure NuttX for QEMU RISC-V (64-bit, Flat Mode)
cd nuttx
tools/configure.sh rv-virt:nsh64
make menuconfig
## Build Setup > Debug Options >
##   Enable Debug Features
##   Enable "Binary Loader Debug Features > Errors, Warnings, Info"
##   Enable "File System Debug Features > Errors, Warnings, Info"
##   Enable "C Library Debug Features > Errors, Warnings, Info"
##   Enable "Memory Manager Debug Features > Errors, Warnings, Info"
##   Enable "Scheduler Debug Features > Errors, Warnings, Info"
##   Enable "Timer Debug Features > Errors, Warnings, Info"
##   Enable "IPC Debug Features > Errors, Warnings, Info"

## Application Configuration > Testing >
##   Enable "OS Test Example"
## RTOS Features > Tasks and Scheduling >
##   Set "Application Entry Point" to "ostest_main"
##   Set "Application Entry Name" to "ostest_main"
## Save and exit menuconfig

## Build NuttX
make

## Export the Binary Image to nuttx.bin
riscv64-unknown-elf-objcopy \
  -O binary \
  nuttx \
  nuttx.bin

## Dump the disassembly to nuttx.S
riscv64-unknown-elf-objdump \
  --syms --source --reloc --demangle --line-numbers --wide \
  --debugging \
  nuttx \
  >nuttx.S \
  2>&1
```

# Run NuttX on TinyEMU

We create a TinyEMU Config for NuttX and run it...

```bash
$ cat nuttx.cfg
/* VM configuration file */
{
  version: 1,
  machine: "riscv64",
  memory_size: 256,
  bios: "nuttx.bin",
}

$ temu nuttx.cfg
```

TinyEMU hangs, nothing happens. Let's print something to TinyEMU HTIF Console...

# Print to HTIF Console

_What's HTIF?_

From [RISC-V Spike Emulator](https://github.com/riscv-software-src/riscv-isa-sim/issues/364#issuecomment-607657754)...

> HTIF is a tether between a simulation host and target, not something that's supposed to resemble a real hardware device. It's not a RISC-V standard; it's a UC Berkeley standard. 

> Bits 63:56 indicate the "device".

> Bits 55:48 indicate the "command".

> Device 1 is the blocking character device.

> Command 0 reads a character

> Command 1 writes a character from the 8 LSBs of tohost

TinyEMU handles HTIF Commands like this: [riscv_machine.c](https://github.com/fernandotcl/TinyEMU/blob/master/riscv_machine.c#L129-L153)

```c
static void htif_handle_cmd(RISCVMachine *s)
{
    uint32_t device, cmd;

    device = s->htif_tohost >> 56;
    cmd = (s->htif_tohost >> 48) & 0xff;
    if (s->htif_tohost == 1) {
        /* shuthost */
        printf("\nPower off.\n");
        exit(0);
    } else if (device == 1 && cmd == 1) {
        uint8_t buf[1];
        buf[0] = s->htif_tohost & 0xff;
        s->common.console->write_data(s->common.console->opaque, buf, 1);
        s->htif_tohost = 0;
        s->htif_fromhost = ((uint64_t)device << 56) | ((uint64_t)cmd << 48);
    } else if (device == 1 && cmd == 0) {
        /* request keyboard interrupt */
        s->htif_tohost = 0;
    } else {
        printf("HTIF: unsupported tohost=0x%016" PRIx64 "\n", s->htif_tohost);
    }
}
```

So to print `1` (ASCII 0x31) to the HTIF Console...

- device <br> = (htif_tohost >> 56) <br> = 1

- cmd <br> = (htif_tohost >> 48) <br> = 1

- buf <br> = (htif_tohost & 0xff) <br> = 0x31

Which means we write this value to htif_tohost...

- (1 << 56) | (1 << 48) | 0x31 <br> = 0x0101_0000_0000_0031

_Where is htif_tohost?_

According to [riscv_machine_init](https://github.com/fernandotcl/TinyEMU/blob/master/riscv_machine.c#L913-L927) and [htif_write](https://github.com/fernandotcl/TinyEMU/blob/master/riscv_machine.c#L154-L178), htif_tohost is at [DEFAULT_HTIF_BASE_ADDR](https://github.com/fernandotcl/TinyEMU/blob/master/riscv_machine.c#L66-L82): 0x4000_8000

Thus we print to HTIF Console like this...

```c
// Print `1` to HTIF Console
*(volatile uint64_t *) 0x40008000 = 0x0101000000000031ul;
```

Let's print something in our NuttX Boot Code...

# Print in NuttX Boot Code

_How to print to HTIF Console in the NuttX Boot Code? (RISC-V Assembly)_

[Based on Star64 Debug Code](https://lupyuen.github.io/articles/nuttx2#print-to-qemu-console), we code this in RISC-V Assembly...

```text
/* Load HTIF Base Address to Register t0 */
li  t0, 0x40008000

/* Load to Register t1 the HTIF Command to print `1` */
li  t1, 0x0101000000000031
/* Store 64-bit double-word from Register t1 to HTIF Base Address, Offset 0 */
sd  t1, 0(t0)

/* Load to Register t1 the HTIF Command to print `2` */
li  t1, 0x0101000000000032
/* Store 64-bit double-word from Register t1 to HTIF Base Address, Offset 0 */
sd  t1, 0(t0)

/* Load to Register t1 the HTIF Command to print `3` */
li  t1, 0x0101000000000033
/* Store 64-bit double-word from Register t1 to HTIF Base Address, Offset 0 */
sd  t1, 0(t0)
```

We insert the above code into the NuttX Boot Code: [qemu_rv_head.S](https://github.com/lupyuen2/wip-pinephone-nuttx/blob/tinyemu/arch/risc-v/src/qemu-rv/qemu_rv_head.S#L43-L61)

_Does it work?_

NuttX prints to the HTIF Console yay! Now we know that NuttX Boot Code is actually running on TinyEMU...

```text
$ temu nuttx.cfg
123
```

Let's fix the NuttX UART Driver...

# Fix the NuttX UART Driver for TinyEMU

_NuttX on TinyEMU has been awfully quiet. How to fix the UART Driver so that NuttX can print things?_

NuttX is still running on the QEMU UART Driver (16550). Let's make a quick patch so that we will see something in the TinyEMU HTIF Console: [uart_16550.c](https://github.com/lupyuen2/wip-pinephone-nuttx/blob/tinyemu/drivers/serial/uart_16550.c#L1701-L1720)

```c
// Write one character to the UART (polled)
static void u16550_putc(FAR struct u16550_s *priv, int ch) {

  // Hardcode the HTIF Base Address
  *(volatile uint64_t *) 0x40008000 = 0x0101000000000000ul | ch;

  // Previously:
  // while ((u16550_serialin(priv, UART_LSR_OFFSET) & UART_LSR_THRE) == 0);
  // u16550_serialout(priv, UART_THR_OFFSET, (uart_datawidth_t)ch);
}
```

We skip the reading and writing of other UART Registers, because we'll patch them later: [uart_16550.c](https://github.com/lupyuen2/wip-pinephone-nuttx/blob/tinyemu/drivers/serial/uart_16550.c#L604-L635)

```c
// Read UART Register
static inline uart_datawidth_t u16550_serialin(FAR struct u16550_s *priv, int offset) {
  return 0; ////
  // Commented out the rest
}

// Write UART Register
static inline void u16550_serialout(FAR struct u16550_s *priv, int offset, uart_datawidth_t value) {
  // Commented out the rest
}
```

And we won't wait for UART Ready, since we're not accessing the Line Control Register: [uart_16550.c](https://github.com/lupyuen2/wip-pinephone-nuttx/blob/tinyemu/drivers/serial/uart_16550.c#L635-L673)

```c
// Wait until UART is not busy. This is needed before writing to Line Control Register.
// Otherwise we will get spurious interrupts on Synopsys DesignWare 8250.
static int u16550_wait(FAR struct u16550_s *priv) {
  // Nopez! No waiting for now
  return OK; ////
}
```

Now we see NuttX booting OK on TinyEMU yay!

```text
$ temu nuttx.cfg
123ABCnx_start: Entry
uart_register: Registering /dev/console
uart_register: Registering /dev/ttyS0
nx_start_application: Starting init thread
task_spawn: name=nsh_main entry=0x8000660e file_actions=0 attr=0x8002e930 argv=0x8002e928
nx_start: CPU0: Beginning Idle Loop
```

Let's boot NuttX in the Web Browser...

# Boot NuttX in the Web Browser

_Will NuttX boot in the Web Browser?_

Yep! WebAssembly Demo is here: [NuttX on TinyEMU Demo](https://lupyuen.github.io/nuttx-tinyemu/)

WebAssembly Files are located here: [nuttx-tinyemu/docs](https://github.com/lupyuen/nuttx-tinyemu/tree/main/docs)

We copied the TinyEMU Config and NuttX Kernel to the Web Server...

```bash
## Copy to Web Server: NuttX Config, Kernel, Disassembly (for troubleshooting)
cp nuttx.cfg ../nuttx-tinyemu/docs/root-riscv64.cfg
cp nuttx.bin ../nuttx-tinyemu/docs/
cp nuttx.S ../nuttx-tinyemu/docs/
```

The other files were provided by [TinyEMU](https://bellard.org/tinyemu/)...

- [jslinux-2019-12-21.tar.gz](https://bellard.org/tinyemu/jslinux-2019-12-21.tar.gz): Precompiled JSLinux demo

_How to test this locally?_

To test on our computer, we need to install a Local Web Server (because our Web Browser won't load WebAssembly Files from the File System)...

```bash
## Based on https://github.com/TheWaWaR/simple-http-server
$ cargo install simple-http-server
$ git clone https://github.com/lupyuen/nuttx-tinyemu
$ simple-http-server nuttx-tinyemu/docs
```

Then browse to...

```text
http://0.0.0.0:8000/index.html
```

_But there's no Console Input?_

To do Console Input, we need to implement VirtIO Console in our NuttX UART Driver...

# VirtIO Console

TODO

[VirtIO for TinyEMU](https://bellard.org/tinyemu/readme.txt)

[Virtio - OSDev Wiki](https://wiki.osdev.org/Virtio)

[Virtual I/O Device (VIRTIO) Version 1.2](https://docs.oasis-open.org/virtio/virtio/v1.2/csd01/virtio-v1.2-csd01.html)

[virtio console](https://projectacrn.github.io/latest/developer-guides/hld/virtio-console.html)

[NuttX Config knetnsh64 supports VirtIO](https://github.com/apache/nuttx/blob/master/boards/risc-v/qemu-rv/rv-virt/configs/knetnsh64/defconfig#L52)

But let's create a simple VirtIO Console Driver for NuttX.

## NuttX VirtIO Driver

TODO: Based on OpenAMP with MMIO

To send data to VirtIO Console:

[virtio_serial_send](https://github.com/apache/nuttx/blob/master/drivers/virtio/virtio-serial.c#L245) calls...

- [virtio_serial_dmatxavail](https://github.com/apache/nuttx/blob/master/drivers/virtio/virtio-serial.c#L345-L357) which calls...

- [uart_xmitchars_dma](https://github.com/apache/nuttx/blob/master/drivers/serial/serial_dma.c#L86-L125) which calls...

- [virtio_serial_dmasend](https://github.com/apache/nuttx/blob/master/drivers/virtio/virtio-serial.c#L315) which calls...

- [virtqueue_add_buffer](https://github.com/OpenAMP/open-amp/blob/main/lib/virtio/virtqueue.c#L83C1-L138) (OpenAMP) and...

  [virtqueue_kick](https://github.com/OpenAMP/open-amp/blob/main/lib/virtio/virtqueue.c#L321-L336) (OpenAMP)

To create a VirtIO Queue:

[virtio_mmio_create_virtqueues](https://github.com/apache/nuttx/blob/master/drivers/virtio/virtio-mmio.c#L419) calls...

- [virtio_mmio_create_virtqueue](https://github.com/apache/nuttx/blob/master/drivers/virtio/virtio-mmio.c#L355) which calls...

- [virtqueue_create](https://github.com/OpenAMP/open-amp/blob/main/lib/virtio/virtqueue.c#L49) (OpenAMP)

TODO: How to call [virtqueue_create](https://github.com/OpenAMP/open-amp/blob/main/lib/virtio/virtqueue.c#L49)?

## TinyEMU VirtIO

TODO

[MMIO addresses](https://github.com/fernandotcl/TinyEMU/blob/master/virtio.c#L37)

[PCI registers](https://github.com/fernandotcl/TinyEMU/blob/master/virtio.c#L66)

Check [VIRTIO_MMIO_MAGIC_VALUE](https://github.com/fernandotcl/TinyEMU/blob/master/virtio.c#L617)

Device IDs: [virtio_init](https://github.com/fernandotcl/TinyEMU/blob/master/virtio.c#L219-L297)

```c
switch(device_id) {
case 1: /* net */ ...
case 2: /* block */ ...
case 3: /* console */ ...
case 9: /* use new device ID */ ...
case 18: /* use new device ID */ ...
```

## TinyEMU VirtIO Console

TODO: Device ID 3

[riscv_machine_init](https://github.com/fernandotcl/TinyEMU/blob/master/riscv_machine.c#L952) calls...

- [virtio_console_init](https://github.com/fernandotcl/TinyEMU/blob/master/virtio.c#L1347-L1361) which calls...

- [virtio_init](https://github.com/fernandotcl/TinyEMU/blob/master/virtio.c#L219-L297) with Device ID 3

[console device decl](https://github.com/fernandotcl/TinyEMU/blob/master/virtio.h#L108)

[console device impl](https://github.com/fernandotcl/TinyEMU/blob/master/virtio.c#L1261)

[virtio_console_write_data](https://github.com/fernandotcl/TinyEMU/blob/master/virtio.c#L1318) calls...

- [memcpy_to_from_queue](https://github.com/fernandotcl/TinyEMU/blob/master/virtio.c#L380)

## TinyEMU VirtIO MMIO Queue

TODO: Queue Desc / Avail / Used

[Read from VirtIO MMIO Queue](https://github.com/fernandotcl/TinyEMU/blob/master/virtio.c#L645)

```c
case VIRTIO_MMIO_QUEUE_SEL:
    val = s->queue_sel;
    break;
case VIRTIO_MMIO_QUEUE_NUM_MAX:
    val = MAX_QUEUE_NUM;
    break;
case VIRTIO_MMIO_QUEUE_NUM:
    val = s->queue[s->queue_sel].num;
    break;
case VIRTIO_MMIO_QUEUE_DESC_LOW:
    val = s->queue[s->queue_sel].desc_addr;
    break;
case VIRTIO_MMIO_QUEUE_AVAIL_LOW:
    val = s->queue[s->queue_sel].avail_addr;
    break;
case VIRTIO_MMIO_QUEUE_USED_LOW:
    val = s->queue[s->queue_sel].used_addr;
    break;
#if VIRTIO_ADDR_BITS == 64
case VIRTIO_MMIO_QUEUE_DESC_HIGH:
    val = s->queue[s->queue_sel].desc_addr >> 32;
    break;
case VIRTIO_MMIO_QUEUE_AVAIL_HIGH:
    val = s->queue[s->queue_sel].avail_addr >> 32;
    break;
case VIRTIO_MMIO_QUEUE_USED_HIGH:
    val = s->queue[s->queue_sel].used_addr >> 32;
    break;
#endif
```

[VIRTIO_MMIO_QUEUE_SEL](https://github.com/fernandotcl/TinyEMU/blob/master/virtio.c#L741)

[VIRTIO_MMIO_QUEUE_NOTIFY](https://github.com/fernandotcl/TinyEMU/blob/master/virtio.c#L781)

# TODO

_Can NuttX run in Kernel Mode on TinyEMU?_

NuttX Kernel Mode requires [RISC-V Semihosting](https://lupyuen.github.io/articles/semihost#semihosting-on-nuttx-qemu) to access the NuttX Apps Filesystem. Which is supported by QEMU but not TinyEMU.

But we can [Append the Initial RAM Disk](https://lupyuen.github.io/articles/app#initial-ram-disk) to the NuttX Kernel. So yes it's possible to run NuttX in Kernel Mode with TinyEMU, with some additional [Mounting Code](https://lupyuen.github.io/articles/app#mount-the-initial-ram-disk).
