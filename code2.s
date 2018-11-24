.LC0:
        .string "%d"
.LC1:
        .string "%d "
main:
        push    rbp
        mov     rbp, rsp
        sub     rsp, 176
        mov     DWORD PTR [rbp-4], 0
.L5:
        cmp     DWORD PTR [rbp-4], 2
        jg      .L2
        mov     DWORD PTR [rbp-8], 0
.L4:
        cmp     DWORD PTR [rbp-8], 2
        jg      .L3
        lea     rcx, [rbp-80]
        mov     eax, DWORD PTR [rbp-8]
        movsx   rsi, eax
        mov     eax, DWORD PTR [rbp-4]
        movsx   rdx, eax
        mov     rax, rdx
        add     rax, rax
        add     rax, rdx
        add     rax, rsi
        sal     rax, 2
        add     rax, rcx
        mov     rsi, rax
        mov     edi, OFFSET FLAT:.LC0
        mov     eax, 0
        call    scanf
        add     DWORD PTR [rbp-8], 1
        jmp     .L4
.L3:
        add     DWORD PTR [rbp-4], 1
        jmp     .L5
.L2:
        mov     edi, 10
        call    putchar
        mov     DWORD PTR [rbp-12], 0
.L9:
        cmp     DWORD PTR [rbp-12], 2
        jg      .L6
        mov     DWORD PTR [rbp-16], 0
.L8:
        cmp     DWORD PTR [rbp-16], 2
        jg      .L7
        lea     rcx, [rbp-128]
        mov     eax, DWORD PTR [rbp-16]
        movsx   rsi, eax
        mov     eax, DWORD PTR [rbp-12]
        movsx   rdx, eax
        mov     rax, rdx
        add     rax, rax
        add     rax, rdx
        add     rax, rsi
        sal     rax, 2
        add     rax, rcx
        mov     rsi, rax
        mov     edi, OFFSET FLAT:.LC0
        mov     eax, 0
        call    scanf
        add     DWORD PTR [rbp-16], 1
        jmp     .L8
.L7:
        add     DWORD PTR [rbp-12], 1
        jmp     .L9
.L6:
        mov     DWORD PTR [rbp-20], 0
.L15:
        cmp     DWORD PTR [rbp-20], 2
        jg      .L10
        mov     DWORD PTR [rbp-24], 0
.L14:
        cmp     DWORD PTR [rbp-24], 2
        jg      .L11
        mov     eax, DWORD PTR [rbp-24]
        movsx   rcx, eax
        mov     eax, DWORD PTR [rbp-20]
        movsx   rdx, eax
        mov     rax, rdx
        add     rax, rax
        add     rax, rdx
        add     rax, rcx
        mov     DWORD PTR [rbp-176+rax*4], 0
        mov     DWORD PTR [rbp-28], 0
.L13:
        cmp     DWORD PTR [rbp-28], 2
        jg      .L12
        mov     eax, DWORD PTR [rbp-24]
        movsx   rcx, eax
        mov     eax, DWORD PTR [rbp-20]
        movsx   rdx, eax
        mov     rax, rdx
        add     rax, rax
        add     rax, rdx
        add     rax, rcx
        mov     ecx, DWORD PTR [rbp-176+rax*4]
        mov     eax, DWORD PTR [rbp-28]
        movsx   rsi, eax
        mov     eax, DWORD PTR [rbp-20]
        movsx   rdx, eax
        mov     rax, rdx
        add     rax, rax
        add     rax, rdx
        add     rax, rsi
        mov     esi, DWORD PTR [rbp-80+rax*4]
        mov     eax, DWORD PTR [rbp-24]
        movsx   rdi, eax
        mov     eax, DWORD PTR [rbp-28]
        movsx   rdx, eax
        mov     rax, rdx
        add     rax, rax
        add     rax, rdx
        add     rax, rdi
        mov     eax, DWORD PTR [rbp-128+rax*4]
        imul    eax, esi
        add     ecx, eax
        mov     eax, DWORD PTR [rbp-24]
        movsx   rsi, eax
        mov     eax, DWORD PTR [rbp-20]
        movsx   rdx, eax
        mov     rax, rdx
        add     rax, rax
        add     rax, rdx
        add     rax, rsi
        mov     DWORD PTR [rbp-176+rax*4], ecx
        add     DWORD PTR [rbp-28], 1
        jmp     .L13
.L12:
        add     DWORD PTR [rbp-24], 1
        jmp     .L14
.L11:
        add     DWORD PTR [rbp-20], 1
        jmp     .L15
.L10:
        mov     edi, 10
        call    putchar
        mov     DWORD PTR [rbp-32], 0
.L19:
        cmp     DWORD PTR [rbp-32], 2
        jg      .L16
        mov     DWORD PTR [rbp-36], 0
.L18:
        cmp     DWORD PTR [rbp-36], 2
        jg      .L17
        mov     eax, DWORD PTR [rbp-36]
        movsx   rcx, eax
        mov     eax, DWORD PTR [rbp-32]
        movsx   rdx, eax
        mov     rax, rdx
        add     rax, rax
        add     rax, rdx
        add     rax, rcx
        mov     eax, DWORD PTR [rbp-176+rax*4]
        mov     esi, eax
        mov     edi, OFFSET FLAT:.LC1
        mov     eax, 0
        call    printf
        add     DWORD PTR [rbp-36], 1
        jmp     .L18
.L17:
        mov     edi, 10
        call    putchar
        add     DWORD PTR [rbp-32], 1
        jmp     .L19
.L16:
        mov     eax, 0
        leave
        ret
