#![no_std]

pub use picorv32macro::main;

use core::arch::global_asm;

global_asm!(
    "
    .section .init

    /* set stack pointer */
    la sp, _stack_start

    /* call main */
    j main

    /* break */
    ebreak
    "
);
