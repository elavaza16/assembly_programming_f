section .data
    message db "Running...", 10
    length equ $ - message

section .text
    global _start

_start: #added to indicate start of infinite loop program
repeat:
    ; Print message
    mov rax, 1
    mov rdi, 1
    mov rsi, message
    mov rdx, length
    syscall

    jmp repeat                 ; Jump back unconditionally

# INFINITE LOOP THAT PRINTS "RUNNING..." CONTINUOUSLY