main:
        push    rbp
        mov     rbp, rsp
        sub     rsp, 24
        mov     DWORD PTR [rbp-48], 1
        mov     DWORD PTR [rbp-44], 2
        mov     DWORD PTR [rbp-40], 3
        mov     DWORD PTR [rbp-36], 1
        mov     DWORD PTR [rbp-32], 2
        mov     DWORD PTR [rbp-28], 3
        mov     DWORD PTR [rbp-24], 1
        mov     DWORD PTR [rbp-20], 2
        mov     DWORD PTR [rbp-16], 3
        mov     DWORD PTR [rbp-96], 1
        mov     DWORD PTR [rbp-92], 2
        mov     DWORD PTR [rbp-88], 3
        mov     DWORD PTR [rbp-84], 1
        mov     DWORD PTR [rbp-80], 2
        mov     DWORD PTR [rbp-76], 3
        mov     DWORD PTR [rbp-72], 1
        mov     DWORD PTR [rbp-68], 2
        mov     DWORD PTR [rbp-64], 3
        mov     DWORD PTR [rbp-4], 0
.L7:
        cmp     DWORD PTR [rbp-4], 2
        jg      .L2
        mov     DWORD PTR [rbp-8], 0
.L6:
        cmp     DWORD PTR [rbp-8], 2
        jg      .L3
        mov     eax, DWORD PTR [rbp-8]
        movsx   rcx, eax
        mov     eax, DWORD PTR [rbp-4]
        movsx   rdx, eax
        mov     rax, rdx
        add     rax, rax
        add     rax, rdx
        add     rax, rcx
        mov     DWORD PTR [rbp-144+rax*4], 0
        mov     DWORD PTR [rbp-12], 0
.L5:
        cmp     DWORD PTR [rbp-12], 2
        jg      .L4
        mov     eax, DWORD PTR [rbp-8]
        movsx   rcx, eax
        mov     eax, DWORD PTR [rbp-4]
        movsx   rdx, eax
        mov     rax, rdx
        add     rax, rax
        add     rax, rdx
        add     rax, rcx
        mov     ecx, DWORD PTR [rbp-144+rax*4]
        mov     eax, DWORD PTR [rbp-12]
        movsx   rsi, eax
        mov     eax, DWORD PTR [rbp-4]
        movsx   rdx, eax
        mov     rax, rdx
        add     rax, rax
        add     rax, rdx
        add     rax, rsi
        mov     esi, DWORD PTR [rbp-48+rax*4]
        mov     eax, DWORD PTR [rbp-8]
        movsx   rdi, eax
        mov     eax, DWORD PTR [rbp-12]
        movsx   rdx, eax
        mov     rax, rdx
        add     rax, rax
        add     rax, rdx
        add     rax, rdi
        mov     eax, DWORD PTR [rbp-96+rax*4]
        imul    eax, esi
        add     ecx, eax
        mov     eax, DWORD PTR [rbp-8]
        movsx   rsi, eax
        mov     eax, DWORD PTR [rbp-4]
        movsx   rdx, eax
        mov     rax, rdx
        add     rax, rax
        add     rax, rdx
        add     rax, rsi
        mov     DWORD PTR [rbp-144+rax*4], ecx
        add     DWORD PTR [rbp-12], 1
        jmp     .L5
.L4:
        add     DWORD PTR [rbp-8], 1
        jmp     .L6
.L3:
        add     DWORD PTR [rbp-4], 1
        jmp     .L7
.L2:
        mov     eax, 0
        leave
        ret
