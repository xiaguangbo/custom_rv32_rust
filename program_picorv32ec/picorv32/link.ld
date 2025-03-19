MEMORY
{
    FLASH : ORIGIN = 0x00000000, LENGTH = 1K
    RAM   : ORIGIN = 0x00000400, LENGTH = 1K
}

SECTIONS
{
    .text :
    {
        *(.init*)
        *(.text*)
    } > FLASH

    .stack :
    {
        . = ORIGIN(RAM) + LENGTH(RAM);
        _stack_top = .;
    } > RAM
}
