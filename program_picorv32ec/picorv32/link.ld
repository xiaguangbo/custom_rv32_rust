MEMORY
{
    FLASH : ORIGIN = 0x00000000, LENGTH = 1K
    RAM   : ORIGIN = 0x00000400, LENGTH = 1K
}

SECTIONS
{
    .text : ALIGN(4)
    {
        *(.init*)
        *(.text*)
        *(.rodata*)
    } > FLASH

    .data : ALIGN(4)
    {
        *(.data*)
    } > RAM

    .bss : ALIGN(4)
    {
        *(.bss*)
        *(COMMON)
    } > RAM

    .stack :
    {
        . = ORIGIN(RAM) + LENGTH(RAM);
        _stack_top = .;
    } > RAM
}
