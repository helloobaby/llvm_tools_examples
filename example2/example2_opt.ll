; ModuleID = '.\example2.ll'
source_filename = ".\\example.c"
target datalayout = "e-m:x-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc19.29.30038"

define i32 @main() #0 {
  %1 = call i32 @obfucated()
  %2 = call i32 @obfucated2()
  %3 = add i32 %1, %2
  ret i32 %3
}

define i32 @not_optimized(i32 %num) #0 {
  %1 = add i32 %num, 1
  ret i32 %1
}

define i32 @obfucated() #0 {
  %key = alloca i32, align 4
  store i32 198, i32* %key, align 4
  %tmp = alloca i32, align 4
  store i32 -1, i32* %tmp, align 4
  %tmp2 = load i32, i32* %tmp, align 4
  %tmp3 = sub i32 %tmp2, 243
  %tmp4 = xor i32 %tmp3, -1
  %key2 = load i32, i32* %key, align 4
  %tmp5 = sub i32 %tmp4, %key2
  ret i32 %tmp5
}

define i32 @obfucated2() #0 {
  %1 = alloca i32, align 4
  store i32 1111, i32* %1, align 4
  %2 = add i32 0, 0
  %3 = call i32 @not_optimized(i32 %2)
  ret i32 %3
}

attributes #0 = { "ccc" }
