source_filename = ".\\example.c"
target datalayout = "e-m:x-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc19.29.30038"

; function's call convention
; https://llvm.org/docs/LangRef.html#calling-conventions
attributes #0={"ccc"}

@0 = internal global i64 0
@eax = internal global i32 0
@ecx = internal global i32 0
@edx = internal global i32 0
@ebx = internal global i32 0
@esp = internal global i32 0
@ebp = internal global i32 0
@esi = internal global i32 0
@edi = internal global i32 0
@eip = internal global i32 0
@eiz = internal global i32 0

define i32 @main() #0{
%1 = call i32 @obfucated()
%2 = call i32 @obfucated2()
%3 = add i32 %1,%2
ret i32 %3
}


; .text:1004DE00 DllGetInterface proc near               ; DATA XREF: .rdata:off_102976C8↓o
; .text:1004DE00
; .text:1004DE00 var_18          = dword ptr -18h
; .text:1004DE00 var_14          = dword ptr -14h
; .text:1004DE00 var_10          = dword ptr -10h
; .text:1004DE00
; .text:1004DE00                 push    ebp
; .text:1004DE01                 mov     ebp, esp
; .text:1004DE03                 push    ebx
; .text:1004DE04                 push    edi
; .text:1004DE05                 push    esi
; .text:1004DE06                 sub     esp, 4Ch
; .text:1004DE09                 mov     eax, ___security_cookie
; .text:1004DE0E                 lea     edx, [ebp+var_18]
; .text:1004DE11                 mov     ebx, 0F6h
; .text:1004DE16                 xor     eax, ebp
; .text:1004DE18                 mov     [ebp+var_10], eax
; .text:1004DE1B                 mov     [ebp+var_18], 198 ; key
; .text:1004DE22                 call    $+5
; .text:1004DE27                 pop     edi             ; mov edi,eip
; .text:1004DE28                 mov     eax, 0FFFFFFFFh
; .text:1004DE2D                 sub     eax, 243
; .text:1004DE32                 not     eax
; .text:1004DE34                 mov     ecx, [edx]      ; get key
; .text:1004DE36                 sub     eax, ecx        ; operation with key
; .text:1004DE38                 add     edi, eax        ; get real eip
; .text:1004DE3A                 mov     [ebp+var_14], 0D0h
; .text:1004DE41                 jmp     edi
; .text:1004DE41 DllGetInterface endp

define i32 @not_optimized(i32 %num)#0{
    %1 = add i32 %num,1
    ret i32 %1
}

define i32 @obfucated()#0{
%key = alloca i32
store i32 198,i32* %key
%tmp = alloca i32 
store i32 -1,i32* %tmp
%tmp2 = load i32, i32* %tmp
%tmp3 = sub i32 %tmp2,243
%tmp4 = xor i32 %tmp3,-1
%key2 = load i32, i32* %key
%tmp5 = sub i32 %tmp4,%key2 ; tmp5 = eax
ret i32 %tmp5
}

;bind var to physical register
;see llvm IR tutorial.pdf
define i32 @obfucated2()#0{
%1= alloca i32
store i32 1111,i32* %1
%2 = add i32 0,0
%3 = call i32 @not_optimized(i32 %2)
ret i32 %3
}

define void @obfucated3(){   
entry:
    store volatile i64 4096, i64* @0
    store i32 1, i32* @edx
    ret void
}