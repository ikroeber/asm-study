

            section .data
            
            msg db 'I am outputting!!!!'
            msg_len equ $ - msg

            section .text

            global _start

_start:     mov eax, 1
            mov edi, 1
            mov esi, msg
            mov edx, msg_len,
            syscall
            mov eax, 60
            mov edi, 0
            syscall