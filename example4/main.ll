; ModuleID = 'test'
source_filename = "test"
target datalayout = "e-p:32:32-f64:32:64-f80:32-n8:16:32-S128"

@eax = internal global i32 0
@edx = internal global i32 0
@ebx = internal global i32 0
@ebp = internal global i32 0
@edi = internal global i32 0

define void @root() {
entry:
  ; get ebp
  %0 = load i32, i32* @ebp, !insn.addr !0
  ;  ebp = ebp - 24
  %1 = add i32 %0, -24, !insn.addr !0
  ;  [ebp]=edx
  store i32 %1, i32* @edx, !insn.addr !0
  ; mov ebx,246
  store i32 246, i32* @ebx, !insn.addr !1
  ; get eax
  %2 = load i32, i32* @eax, !insn.addr !2
  ; xor eax,ebp
  %3 = load i32, i32* @ebp, !insn.addr !2
  %4 = xor i32 %2, %3, !insn.addr !2
  store i32 %4, i32* @eax, !insn.addr !2
  ; mov [ebp-16],eax
  %5 = load i32, i32* @eax, !insn.addr !3
  %6 = load i32, i32* @ebp, !insn.addr !3
  %7 = add i32 %6, -16, !insn.addr !3
  %8 = inttoptr i32 %7 to i32*, !insn.addr !3
  store i32 %5, i32* %8, !insn.addr !3
  ; mov     dword ptr [ebp-24], 198
  %9 = load i32, i32* @ebp, !insn.addr !4
  %10 = add i32 %9, -24, !insn.addr !4
  %11 = inttoptr i32 %10 to i32*, !insn.addr !4
  store i32 198, i32* %11, !insn.addr !4
  ; mov     edi, 268754471
  store i32 268754471, i32* @edi, !insn.addr !5
  ; mov eax,45
  store i32 45, i32* @eax, !insn.addr !6
  ; add edi,eax
  %12 = load i32, i32* @edi, !insn.addr !7
  %13 = load i32, i32* @eax, !insn.addr !7
  %14 = add i32 %12, %13, !insn.addr !7
  store i32 %14, i32* @edi, !insn.addr !7
  ;
  %15 = load i32, i32* @ebp, !insn.addr !8
  %16 = add i32 %15, -20, !insn.addr !8
  %17 = inttoptr i32 %16 to i32*, !insn.addr !8
  store i32 208, i32* %17, !insn.addr !8

  ;%18 = load i32, i32* @edi, !insn.addr !9
  ;call void @0(i32 %18), !insn.addr !9
  ret void, !insn.addr !9
}

declare void @0(i32)

!0 = !{i64 0}
!1 = !{i64 3}
!2 = !{i64 8}
!3 = !{i64 10}
!4 = !{i64 13}
!5 = !{i64 20}
!6 = !{i64 25}
!7 = !{i64 30}
!8 = !{i64 32}
!9 = !{i64 39}
