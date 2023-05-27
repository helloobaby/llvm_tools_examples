; ModuleID = 'test'
source_filename = "test"
target datalayout = "e-p:32:32-f64:32:64-f80:32-n8:16:32-S128"

@eax = internal global i32 0
@ecx = internal global i32 0
@edx = internal global i32 0
@ebx = internal global i32 0
@ebp = internal global i32 0
@edi = internal global i32 0

define void @root() {
entry:
  %0 = load i32, i32* @ebp, align 4
  %1 = add i32 %0, -24, !insn.addr !0
  store i32 %1, i32* @edx, align 4, !insn.addr !0
  store i32 246, i32* @ebx, align 4, !insn.addr !1
  %2 = load i32, i32* @eax, align 4, !insn.addr !2
  %3 = xor i32 %2, %0, !insn.addr !2
  store i32 %3, i32* @eax, align 4, !insn.addr !2
  %4 = load i32, i32* @ebp, align 4, !insn.addr !3
  %5 = add i32 %4, -16, !insn.addr !3
  %6 = inttoptr i32 %5 to i32*, !insn.addr !3
  store i32 %3, i32* %6, align 4, !insn.addr !3
  %7 = load i32, i32* @ebp, align 4, !insn.addr !4
  %8 = add i32 %7, -24, !insn.addr !4
  %9 = inttoptr i32 %8 to i32*, !insn.addr !4
  store i32 198, i32* %9, align 4, !insn.addr !4
  store i32 268754471, i32* @edi, align 4, !insn.addr !5
  store i32 243, i32* @eax, align 4, !insn.addr !6
  %10 = load i32, i32* @edx, align 4, !insn.addr !7
  %11 = inttoptr i32 %10 to i32*, !insn.addr !7
  %12 = load i32, i32* %11, align 4, !insn.addr !7
  store i32 %12, i32* @ecx, align 4, !insn.addr !7
  %13 = sub i32 243, %12, !insn.addr !8
  store i32 %13, i32* @eax, align 4, !insn.addr !8
  %14 = load i32, i32* @edi, align 4, !insn.addr !9
  %15 = add i32 %14, %13, !insn.addr !9
  store i32 %15, i32* @edi, align 4, !insn.addr !9
  %16 = load i32, i32* @ebp, align 4, !insn.addr !10
  %17 = add i32 %16, -20, !insn.addr !10
  %18 = inttoptr i32 %17 to i32*, !insn.addr !10
  store i32 208, i32* %18, align 4, !insn.addr !10
  %19 = load i32, i32* @edi, align 4, !insn.addr !11
  call void @0(i32 %19), !insn.addr !11
  ret void, !insn.addr !11
}

declare void @0(i32)

!0 = !{i64 0}
!1 = !{i64 3}
!2 = !{i64 8}
!3 = !{i64 10}
!4 = !{i64 13}
!5 = !{i64 20}
!6 = !{i64 35}
!7 = !{i64 37}
!8 = !{i64 39}
!9 = !{i64 41}
!10 = !{i64 43}
!11 = !{i64 50}
