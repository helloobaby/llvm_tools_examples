;
;write ll by self
;

source_filename = ".\\example.c"
target datalayout = "e-m:x-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc19.29.30038"

define i32 @main(){
%1 = call i32 @fib(i32 5)
ret i32 %1
}

define i32 @fib(i32 %0){
;must start with %2 other than %1(%1 identifiers is label)
%2 = alloca i32,align 4 ; data must align
%3 = alloca i32,align 4 ; %2,%3 type is i32*
store i32 0,i32* %2
store i32 1,i32* %3
%4 = load i32,i32* %2
%5 = load i32,i32* %3
%cond = icmp eq i32 %0,%4 ; if(n == 0)
%cond2 = icmp eq i32 %0,%5 ;if(n == 1)
br i1 %cond,label %7,label %8 ;if(n == 0 || n == 1)
br i1 %cond2,label %7,label %8
7:
ret i32 1
8:
br i1 %cond2,label %7,label %9
9:
ret i32 -1
}