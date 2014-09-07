

.section .init
.globl _start
.extern BeginOS
_start:

b main

.section .text
main:

mov sp, #0x8000

bl BeginOS
