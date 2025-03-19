#![no_std]

pub use picorv32macro::main;

use core::arch::global_asm;

global_asm!(
    "
    .section .init

    la sp, _stack_top

    j main
    "
);
