global _main
extern _printf
extern _exit

section .data
    msg db 'Hello, World!', 0xa, 0

section .text
_main:
    push rbp
    mov rbp, rsp
    
    lea rdi, [rel msg]
    call _printf
    
    mov rdi, 0
    call _exit

