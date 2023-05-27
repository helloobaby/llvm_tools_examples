opt.exe -O3 main.ll -o main_opt.bc
llc.exe main_opt.bc -x86-asm-syntax=intel -march=x86
clang.exe -c main_opt.bc -m32
del .\main_opt.bc