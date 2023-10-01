.text:0000000100401094 ; =============== S U B R O U T I N E =======================================
.text:0000000100401094
.text:0000000100401094 ; Attributes: bp-based frame
.text:0000000100401094
.text:0000000100401094 ; int f(int, char **, char **)
.text:0000000100401094 f               proc near               ; DATA XREF: mainCRTStartup+4↑o
.text:0000000100401094                                         ; .pdata:0000000100405024↓o ...
.text:0000000100401094
.text:0000000100401094 var_14          = dword ptr -14h
.text:0000000100401094 var_10          = dword ptr -10h
.text:0000000100401094 var_C           = dword ptr -0Ch
.text:0000000100401094 var_5           = byte ptr -5
.text:0000000100401094 var_4           = dword ptr -4
.text:0000000100401094
.text:0000000100401094                 push    rbp             ; this is to preserve the content of base pointer which may contain the old value which may belong to the old function.
.text:0000000100401095                 mov     rbp, rsp        ; priming both the base pointer and stack pointer to the same memory location.
.text:0000000100401098                 sub     rsp, 40h        ; allocaction of the 64 bytes on to the stack.
.text:000000010040109C                 call    __main
.text:00000001004010A1                 lea     rax, Buffer     ; "teststring"
.text:00000001004010A8                 mov     rcx, rax        ; Buffer
.text:00000001004010AB                 call    puts            ; calling the puts() function to display the char saved in the register rcx Ie. "teststring"
.text:00000001004010B0                 movss   xmm0, cs:dword_100403054
.text:00000001004010B8                 movss   [rbp+var_4], xmm0
.text:00000001004010BD                 mov     [rbp+var_5], 73h ; 's'
.text:00000001004010C1                 lea     rax, aEnterTheValueO ; "Enter the value of a:"
.text:00000001004010C8                 mov     rcx, rax        ; Buffer
.text:00000001004010CB                 call    puts
.text:00000001004010D0                 lea     rax, [rbp+var_10]
.text:00000001004010D4                 mov     rdx, rax
.text:00000001004010D7                 lea     rax, Format     ; "%d"
.text:00000001004010DE                 mov     rcx, rax        ; Format
.text:00000001004010E1                 call    scanf
.text:00000001004010E6                 lea     rax, aEnterTheValueO_0 ; "Enter the value of b:"
.text:00000001004010ED                 mov     rcx, rax        ; Buffer
.text:00000001004010F0                 call    puts
.text:00000001004010F5                 lea     rax, [rbp+var_14]
.text:00000001004010F9                 mov     rdx, rax
.text:00000001004010FC                 lea     rax, Format     ; "%d"
.text:0000000100401103                 mov     rcx, rax        ; Format
.text:0000000100401106                 call    scanf
.text:000000010040110B                 mov     edx, [rbp+var_14]
.text:000000010040110E                 mov     eax, [rbp+var_10]
.text:0000000100401111                 mov     ecx, eax
.text:0000000100401113                 call    sub_100401080
.text:0000000100401118                 mov     [rbp+var_C], eax
.text:000000010040111B                 mov     eax, [rbp+var_C]
.text:000000010040111E                 mov     edx, eax
.text:0000000100401120                 lea     rax, aTheValueOfCIsD ; "the value of c is: %d\n"
.text:0000000100401127                 mov     rcx, rax        ; Format
.text:000000010040112A                 call    printf
.text:000000010040112F                 mov     eax, 0
.text:0000000100401134                 add     rsp, 40h
.text:0000000100401138                 pop     rbp
.text:0000000100401139                 retn
.text:0000000100401139 f               endp
.text:0000000100401139
