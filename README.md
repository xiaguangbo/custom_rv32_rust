# custom_rv32_rust

picorv32ec + rust

# guide

## base

1. terminal_1 path at ~/linux/project/custom_rv32_rust/program_picorv32ec/project
```
cargo build --release
cp -f ./target/riscv32ec-unknown-none-elf/release/project ../../program_gw2arlv18qn88c817/project/src/project
```

2. terminal_2 path at ~/linux/project/custom_rv32_rust/program_gw2arlv18qn88c817/project
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
