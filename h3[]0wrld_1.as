=== S U B R O U T I N E =======================================
.text:0000000100401080
.text:0000000100401080 ; Attributes: bp-based frame
.text:0000000100401080
.text:0000000100401080 ; int f(int, char **, char **)
.text:0000000100401080 f               proc near               ; DATA XREF: mainCRTStartup+4↑o
.text:0000000100401080                                         ; .pdata:0000000100405024↓o
.text:0000000100401080                 push    rbp             ; preserving the previous value of the base pointer.
.text:0000000100401081                 mov     rbp, rsp        ; base pointer primed with the new memory address over the stack
.text:0000000100401084                 sub     rsp, 20h        ; allocating the space of 32 bytes over the stack
.text:0000000100401088                 call    __main
.text:000000010040108D                 lea     rax, Format     ; "Hello world this is me th3ghost"
.text:0000000100401094                 mov     rcx, rax        ; Format
.text:0000000100401097                 call    printf
.text:000000010040109C                 mov     eax, 0          ; this is the return value of the function being saved in the register EAX as per the _cdecl calling convention rules.
.text:00000001004010A1                 add     rsp, 20h        ; de-allocating the 32bytes from the stack, esp now pointing at the contents of base pointer saved by instruction in prologue.
.text:00000001004010A5                 pop     rbp             ; poping whatever rsp pointing at in current situation rsp is pointing at memory location of the previous value saved on the stack.
.text:00000001004010A6                 retn                    ; return the execution control flow to the current function caller
.text:00000001004010A6 f               endp
