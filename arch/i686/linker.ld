/* Derived from https://github.com/Henje/x86-Toy-OS/ to save time :)*/

ENTRY(_start)

SECTIONS
{
	. = 0x100000;

	.text : {
		*(multiboot)
		*(.text)
	}
	.data ALIGN(4096) : {
		*(.data)
	}
	.rodata ALIGN(4096) : {
		*(.rodata)
	}
	.bss ALIGN(4096) : {
		*(.bss)
	}
}