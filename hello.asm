 section .data
    msg:
        db "Hello, World!", 10
        db "I'm Braxten Orline Urdelas!", 10
        db "Someday I will become a successful Professional", 10
        db "and be known for my skills and intellect.", 10
    len equ $ - msg

section .text
    global _start

_start:
    mov rax, 1          ; syscall number 1 = write
    mov rdi, 1          ; file descriptor 1 = stdout (the screen)
    mov rsi, msg        ; address of the text
    mov rdx, len        ; how many bytes to write
    syscall

    mov rax, 60         ; syscall number 60 = exit
    xor rdi, rdi        ; exit code 0
    syscall
