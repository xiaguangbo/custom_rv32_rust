#![no_std]
#![no_main]

use core::{panic::PanicInfo, u32};

#[picorv32::main]
fn main() -> ! {
    let address = 0x1000_0000 as *mut u32;
    // let mut x: u32 = 0;

    loop {
        unsafe {
            // x = x + 1;

            // if x % 27_000_000 == 0 {
            //     *address = 0x66;
            // } else {
            //     *address = 0x99;
            // }

            *address = 0x66;
        }
    }
}

#[panic_handler]
fn panic(_info: &PanicInfo) -> ! {
    loop {}
}
