#![no_std]
#![no_main]

use core::{panic::PanicInfo, u32};

#[picorv32::main]
fn main() -> ! {
    let address = 0x1000_0000 as *mut u32;
    let mut x: u32 = 0;

    loop {
        x = x + 1;

        if x == 1 {
            unsafe {
                *address = 0x66;
            }
        } else if x == 27_000_0 {
            unsafe {
                *address = 0x99;
            }
        } else if x == 27_000_0 * 2 {
            x = 0;
        }
    }
}

#[panic_handler]
fn panic(_info: &PanicInfo) -> ! {
    loop {}
}
