#![no_std]

pub use picorv32macro::main;

use core::arch::global_asm;

global_asm!(
    ".section .init
    .global main

    /* set stack pointer */
    lui sp, %hi(1*1024)
    addi sp, sp, %lo(1*1024)

    /* call main */
    jal ra, main

    /* break */
    ebreak
    "
);
