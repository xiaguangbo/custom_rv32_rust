# picorv32_and_rust

picorv32ec + rust

# guide

## base

1. terminal_1 path at picorv32_and_rust/program_picorv32ec/project
```
cargo build --release
cp -f ./target/riscv32ec-unknown-none-elf/release/project ../../program_gw2arlv18qn88c817/project/src/project
```

2. terminal_2 path at picorv32_and_rust/program_gw2arlv18qn88c817/project
```
llvm-objcopy -O binary ./src/project ./src/project.bin
python3 ./src/makehex.py ./src/project.bin 4096 > ./src/project.hex
```
use gowin_ide build all(if no use gowin analyzer, must disable GAO config files, Otherwise no work)
```
openFPGALoader -b tangnano20k -f ./impl/pnr/project.fs
```
press resetn button

## gowin analyzer

1. creat GAO file, add something
2. open Gowin Analyzer Oscilloscope, programmer ao_0.fs to SRAM
3. start

# other

## readelf

```
$ llvm-readelf -h ./src/project
ELF Header:
  Magic:   7f 45 4c 46 01 01 01 00 00 00 00 00 00 00 00 00
  Class:                             ELF32
  Data:                              2's complement, little endian
  Version:                           1 (current)
  OS/ABI:                            UNIX - System V
  ABI Version:                       0
  Type:                              EXEC (Executable file)
  Machine:                           RISC-V
  Version:                           0x1
  Entry point address:               0x0
  Start of program headers:          52 (bytes into file)
  Start of section headers:          6664 (bytes into file)
  Flags:                             0x9, RVC, RVE
  Size of this header:               52 (bytes)
  Size of program headers:           32 (bytes)
  Number of program headers:         4
  Size of section headers:           40 (bytes)
  Number of section headers:         8
  Section header string table index: 6
```

## objdump

```
$ llvm-objdump -d ./project

./project:	file format elf32-littleriscv

Disassembly of section .text:

00000000 <.Lpcrel_hi0>:
       0: 00001117     	auipc	sp, 0x1
       4: 80010113     	addi	sp, sp, -0x800
       8: 0040006f     	j	0xc <main>

0000000c <main>:
       c: 4781         	li	a5, 0x0
       e: 10000537     	lui	a0, 0x10000
      12: 06600593     	li	a1, 0x66
      16: 000426b7     	lui	a3, 0x42
      1a: 09900293     	li	t0, 0x99
      1e: 00084737     	lui	a4, 0x84
      22: eb068693     	addi	a3, a3, -0x150
      26: d6070613     	addi	a2, a4, -0x2a0
      2a: a019         	j	0x30 <main+0x24>
      2c: c10c         	sw	a1, 0x0(a0)
      2e: 4785         	li	a5, 0x1
      30: dff5         	beqz	a5, 0x2c <main+0x20>
      32: 0785         	addi	a5, a5, 0x1
      34: 00d78963     	beq	a5, a3, 0x46 <main+0x3a>
      38: 00c7c733     	xor	a4, a5, a2
      3c: 00173713     	seqz	a4, a4
      40: 177d         	addi	a4, a4, -0x1
      42: 8ff9         	and	a5, a5, a4
      44: b7f5         	j	0x30 <main+0x24>
      46: 00552023     	sw	t0, 0x0(a0)
      4a: 87b6         	mv	a5, a3
      4c: b7d5         	j	0x30 <main+0x24>
```
