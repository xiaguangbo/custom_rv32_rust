#![no_std]
#![no_main]

use core::panic::PanicInfo;

#[picorv32::main]
fn main() -> ! {
    let address = 0x1000_0000 as *mut u32;
    // let mut i = 0u32;

    loop {
        //     i = i + 1;

        unsafe {
            *address = 0xaa;
        }
    }
}

#[panic_handler]
fn panic(_info: &PanicInfo) -> ! {
    loop {}
}
