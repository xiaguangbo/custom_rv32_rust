#![no_std]

pub use picorv32entrymacro::entry;

use core::arch::global_asm;

global_asm!(
    ".section .init

    /* set stack pointer */
    lui sp, %hi(16*1024)
    addi sp, sp, %lo(16*1024)

    jal main

    ebreak
    "
);
