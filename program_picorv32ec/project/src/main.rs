#![no_std]
#![no_main]

use panic_halt as _;

#[picorv32asm::entry]
fn main() -> ! {
    loop {}
}
