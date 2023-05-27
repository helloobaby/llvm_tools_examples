### source code file (like .c)translate to llvm-ir(.ll)
```
clang -emit-llvm  -S -c <source_filename> -o <ir_filename> 
```

Or(There is no -o param, it is convenient, the file name is automatically generated)

```
clang -S -emit-llvm <source_filename>
```

### ir(.ll) translate to assembly code(.s)
```
llc <ir_file_name>
```
default grammar is AT&T

```
llc <ir_file_name> -x86-asm-syntax=intel
```

### bitcode(.bc) translate to assembly code(.s)

```
llc <bitcode_file_name> -x86-asm-syntax=intel	
```

### assembly code(.s) translate to COFF object file(.o)

```
clang -c <assembly_file>
```

build for x86(-m32)

```
clang -c <assembly_file> -m32
```

### bitcode(.bc) translate to COFF object file(.o)

```
clang -c <bitcode_file> 
```

### disassembly a object file(.o)

```
objdump <object_file> -d -Mintel
```

### control optimization level

```
opt <ir_file_name> -o <bitcode_file_name>
```

```
opt <ir_file_name> -o <bitcode_file_name>
```

### LLVM target datalayout lists

```
intel x86:e-p:32:32-f64:32:64-f80:32-n8:16:32-S128
intel x64:e-m:e-p:64:64-i64:64-f80:128-n8:16:32:64-S128
```



some tool cant be founded in llvm releases.
https://stackoverflow.com/questions/43708901/no-llc-on-windows



