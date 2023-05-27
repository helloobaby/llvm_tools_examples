;.text:1004DE06 83 EC 4C                                sub     esp, 4Ch
;.text:1004DE09 A1 44 94 29 10                          mov     eax, ___security_cookie
.text:1004DE0E 8D 55 E8                                lea     edx, [ebp-24]
.text:1004DE11 BB F6 00 00 00                          mov     ebx, 246
.text:1004DE16 31 E8                                   xor     eax, ebp
.text:1004DE18 89 45 F0                                mov     [ebp-16], eax
.text:1004DE1B C7 45 E8 C6 00 00 00                    mov     dword ptr [ebp-24], 198
.text:1004DE22 BF 27 DE 04 10                          mov     edi, 268754471
.text:1004DE27 90                                      nop
.text:1004DE28 B8 2D 00 00 00                          mov     eax, 45
.text:1004DE2D 90                                      nop
.text:1004DE2E 90                                      nop
.text:1004DE2F 90                                      nop
.text:1004DE30 90                                      nop
.text:1004DE31 90                                      nop
.text:1004DE32 90                                      nop
.text:1004DE33 90                                      nop
.text:1004DE34 90                                      nop
.text:1004DE35 90                                      nop
.text:1004DE36 90                                      nop
.text:1004DE37 90                                      nop
.text:1004DE38 01 C7                                   add     edi, eax
.text:1004DE3A C7 45 EC D0 00 00 00                    mov     dword ptr [ebp-20], 208
.text:1004DE41 FF E7                                   jmp     edi             ; 1004de54