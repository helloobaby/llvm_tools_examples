	.text
	.def	 @feat.00;
	.scl	3;
	.type	0;
	.endef
	.globl	@feat.00
.set @feat.00, 0
	.intel_syntax noprefix
	.file	"example1.c"
	.def	 sprintf;
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,sprintf
	.globl	sprintf                         # -- Begin function sprintf
	.p2align	4, 0x90
sprintf:                                # @sprintf
.seh_proc sprintf
# %bb.0:
	sub	rsp, 72
	.seh_stackalloc 72
	.seh_endprologue
	mov	qword ptr [rsp + 104], r9
	mov	qword ptr [rsp + 96], r8
	mov	qword ptr [rsp + 64], rdx
	mov	qword ptr [rsp + 56], rcx
	lea	rax, [rsp + 96]
	mov	qword ptr [rsp + 48], rax
	mov	r9, qword ptr [rsp + 48]
	mov	rdx, qword ptr [rsp + 64]
	mov	rcx, qword ptr [rsp + 56]
	xor	r8d, r8d
	call	_vsprintf_l
	mov	dword ptr [rsp + 44], eax
	mov	eax, dword ptr [rsp + 44]
	add	rsp, 72
	ret
	.seh_endproc
                                        # -- End function
	.def	 vsprintf;
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,vsprintf
	.globl	vsprintf                        # -- Begin function vsprintf
	.p2align	4, 0x90
vsprintf:                               # @vsprintf
.seh_proc vsprintf
# %bb.0:
	sub	rsp, 72
	.seh_stackalloc 72
	.seh_endprologue
	mov	qword ptr [rsp + 64], r8
	mov	qword ptr [rsp + 56], rdx
	mov	qword ptr [rsp + 48], rcx
	mov	rax, qword ptr [rsp + 64]
	mov	r8, qword ptr [rsp + 56]
	mov	rcx, qword ptr [rsp + 48]
	mov	rdx, -1
	xor	r9d, r9d
	mov	qword ptr [rsp + 32], rax
	call	_vsnprintf_l
	nop
	add	rsp, 72
	ret
	.seh_endproc
                                        # -- End function
	.def	 _snprintf;
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,_snprintf
	.globl	_snprintf                       # -- Begin function _snprintf
	.p2align	4, 0x90
_snprintf:                              # @_snprintf
.seh_proc _snprintf
# %bb.0:
	sub	rsp, 72
	.seh_stackalloc 72
	.seh_endprologue
	mov	qword ptr [rsp + 104], r9
	mov	qword ptr [rsp + 64], r8
	mov	qword ptr [rsp + 56], rdx
	mov	qword ptr [rsp + 48], rcx
	lea	rax, [rsp + 104]
	mov	qword ptr [rsp + 40], rax
	mov	r9, qword ptr [rsp + 40]
	mov	r8, qword ptr [rsp + 64]
	mov	rdx, qword ptr [rsp + 56]
	mov	rcx, qword ptr [rsp + 48]
	call	_vsnprintf
	mov	dword ptr [rsp + 36], eax
	mov	eax, dword ptr [rsp + 36]
	add	rsp, 72
	ret
	.seh_endproc
                                        # -- End function
	.def	 _vsnprintf;
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,_vsnprintf
	.globl	_vsnprintf                      # -- Begin function _vsnprintf
	.p2align	4, 0x90
_vsnprintf:                             # @_vsnprintf
.seh_proc _vsnprintf
# %bb.0:
	sub	rsp, 72
	.seh_stackalloc 72
	.seh_endprologue
	mov	qword ptr [rsp + 64], r9
	mov	qword ptr [rsp + 56], r8
	mov	qword ptr [rsp + 48], rdx
	mov	qword ptr [rsp + 40], rcx
	mov	rax, qword ptr [rsp + 64]
	mov	r8, qword ptr [rsp + 56]
	mov	rdx, qword ptr [rsp + 48]
	mov	rcx, qword ptr [rsp + 40]
	xor	r9d, r9d
	mov	qword ptr [rsp + 32], rax
	call	_vsnprintf_l
	nop
	add	rsp, 72
	ret
	.seh_endproc
                                        # -- End function
	.def	 fib;
	.scl	2;
	.type	32;
	.endef
	.text
	.globl	fib                             # -- Begin function fib
	.p2align	4, 0x90
fib:                                    # @fib
.seh_proc fib
# %bb.0:
	push	rsi
	.seh_pushreg rsi
	sub	rsp, 48
	.seh_stackalloc 48
	.seh_endprologue
	mov	dword ptr [rsp + 40], ecx
	cmp	dword ptr [rsp + 40], 0
	je	.LBB4_2
# %bb.1:
	cmp	dword ptr [rsp + 40], 1
	jne	.LBB4_3
.LBB4_2:
	mov	dword ptr [rsp + 44], 1
	jmp	.LBB4_4
.LBB4_3:
	mov	ecx, dword ptr [rsp + 40]
	sub	ecx, 1
	call	fib
	mov	esi, eax
	mov	ecx, dword ptr [rsp + 40]
	sub	ecx, 2
	call	fib
	add	esi, eax
	mov	dword ptr [rsp + 44], esi
.LBB4_4:
	mov	eax, dword ptr [rsp + 44]
	add	rsp, 48
	pop	rsi
	ret
	.seh_endproc
                                        # -- End function
	.def	 main;
	.scl	2;
	.type	32;
	.endef
	.globl	main                            # -- Begin function main
	.p2align	4, 0x90
main:                                   # @main
.seh_proc main
# %bb.0:
	sub	rsp, 40
	.seh_stackalloc 40
	.seh_endprologue
	mov	dword ptr [rsp + 36], 0
	mov	ecx, 5
	call	fib
	mov	dword ptr [rsp + 32], eax
	mov	edx, dword ptr [rsp + 32]
	lea	rcx, [rip + "??_C@_07OAONGAOK@r?5?$DN?5?$CFd?6?$AA@"]
	call	printf
	xor	eax, eax
	add	rsp, 40
	ret
	.seh_endproc
                                        # -- End function
	.def	 printf;
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,printf
	.globl	printf                          # -- Begin function printf
	.p2align	4, 0x90
printf:                                 # @printf
.seh_proc printf
# %bb.0:
	push	rsi
	.seh_pushreg rsi
	push	rdi
	.seh_pushreg rdi
	sub	rsp, 56
	.seh_stackalloc 56
	.seh_endprologue
	mov	qword ptr [rsp + 104], r9
	mov	qword ptr [rsp + 96], r8
	mov	qword ptr [rsp + 88], rdx
	mov	qword ptr [rsp + 48], rcx
	lea	rax, [rsp + 88]
	mov	qword ptr [rsp + 40], rax
	mov	rsi, qword ptr [rsp + 40]
	mov	rdi, qword ptr [rsp + 48]
	mov	ecx, 1
	call	__acrt_iob_func
	mov	rcx, rax
	mov	rdx, rdi
	xor	r8d, r8d
	mov	r9, rsi
	call	_vfprintf_l
	mov	dword ptr [rsp + 36], eax
	mov	eax, dword ptr [rsp + 36]
	add	rsp, 56
	pop	rdi
	pop	rsi
	ret
	.seh_endproc
                                        # -- End function
	.def	 _vsprintf_l;
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,_vsprintf_l
	.globl	_vsprintf_l                     # -- Begin function _vsprintf_l
	.p2align	4, 0x90
_vsprintf_l:                            # @_vsprintf_l
.seh_proc _vsprintf_l
# %bb.0:
	sub	rsp, 72
	.seh_stackalloc 72
	.seh_endprologue
	mov	qword ptr [rsp + 64], r9
	mov	qword ptr [rsp + 56], r8
	mov	qword ptr [rsp + 48], rdx
	mov	qword ptr [rsp + 40], rcx
	mov	rax, qword ptr [rsp + 64]
	mov	r9, qword ptr [rsp + 56]
	mov	r8, qword ptr [rsp + 48]
	mov	rcx, qword ptr [rsp + 40]
	mov	rdx, -1
	mov	qword ptr [rsp + 32], rax
	call	_vsnprintf_l
	nop
	add	rsp, 72
	ret
	.seh_endproc
                                        # -- End function
	.def	 _vsnprintf_l;
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,_vsnprintf_l
	.globl	_vsnprintf_l                    # -- Begin function _vsnprintf_l
	.p2align	4, 0x90
_vsnprintf_l:                           # @_vsnprintf_l
.seh_proc _vsnprintf_l
# %bb.0:
	push	r15
	.seh_pushreg r15
	push	r14
	.seh_pushreg r14
	push	rsi
	.seh_pushreg rsi
	push	rdi
	.seh_pushreg rdi
	push	rbx
	.seh_pushreg rbx
	sub	rsp, 96
	.seh_stackalloc 96
	.seh_endprologue
	mov	rax, qword ptr [rsp + 176]
	mov	qword ptr [rsp + 88], r9
	mov	qword ptr [rsp + 80], r8
	mov	qword ptr [rsp + 72], rdx
	mov	qword ptr [rsp + 64], rcx
	mov	r14, qword ptr [rsp + 176]
	mov	r15, qword ptr [rsp + 88]
	mov	rsi, qword ptr [rsp + 80]
	mov	rdi, qword ptr [rsp + 72]
	mov	rbx, qword ptr [rsp + 64]
	call	__local_stdio_printf_options
	mov	rcx, qword ptr [rax]
	or	rcx, 1
	mov	rdx, rbx
	mov	r8, rdi
	mov	r9, rsi
	mov	qword ptr [rsp + 32], r15
	mov	qword ptr [rsp + 40], r14
	call	__stdio_common_vsprintf
	mov	dword ptr [rsp + 60], eax
	cmp	dword ptr [rsp + 60], 0
	jge	.LBB8_2
# %bb.1:
	mov	eax, 4294967295
	jmp	.LBB8_3
.LBB8_2:
	mov	eax, dword ptr [rsp + 60]
.LBB8_3:
	add	rsp, 96
	pop	rbx
	pop	rdi
	pop	rsi
	pop	r14
	pop	r15
	ret
	.seh_endproc
                                        # -- End function
	.def	 __local_stdio_printf_options;
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,__local_stdio_printf_options
	.globl	__local_stdio_printf_options    # -- Begin function __local_stdio_printf_options
	.p2align	4, 0x90
__local_stdio_printf_options:           # @__local_stdio_printf_options
# %bb.0:
	lea	rax, [rip + __local_stdio_printf_options._OptionsStorage]
	ret
                                        # -- End function
	.def	 _vfprintf_l;
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,_vfprintf_l
	.globl	_vfprintf_l                     # -- Begin function _vfprintf_l
	.p2align	4, 0x90
_vfprintf_l:                            # @_vfprintf_l
.seh_proc _vfprintf_l
# %bb.0:
	push	r14
	.seh_pushreg r14
	push	rsi
	.seh_pushreg rsi
	push	rdi
	.seh_pushreg rdi
	push	rbx
	.seh_pushreg rbx
	sub	rsp, 72
	.seh_stackalloc 72
	.seh_endprologue
	mov	qword ptr [rsp + 64], r9
	mov	qword ptr [rsp + 56], r8
	mov	qword ptr [rsp + 48], rdx
	mov	qword ptr [rsp + 40], rcx
	mov	r14, qword ptr [rsp + 64]
	mov	rsi, qword ptr [rsp + 56]
	mov	rdi, qword ptr [rsp + 48]
	mov	rbx, qword ptr [rsp + 40]
	call	__local_stdio_printf_options
	mov	rcx, qword ptr [rax]
	mov	rdx, rbx
	mov	r8, rdi
	mov	r9, rsi
	mov	qword ptr [rsp + 32], r14
	call	__stdio_common_vfprintf
	nop
	add	rsp, 72
	pop	rbx
	pop	rdi
	pop	rsi
	pop	r14
	ret
	.seh_endproc
                                        # -- End function
	.section	.rdata,"dr",discard,"??_C@_07OAONGAOK@r?5?$DN?5?$CFd?6?$AA@"
	.globl	"??_C@_07OAONGAOK@r?5?$DN?5?$CFd?6?$AA@" # @"??_C@_07OAONGAOK@r?5?$DN?5?$CFd?6?$AA@"
"??_C@_07OAONGAOK@r?5?$DN?5?$CFd?6?$AA@":
	.asciz	"r = %d\n"

	.lcomm	__local_stdio_printf_options._OptionsStorage,8,8 # @__local_stdio_printf_options._OptionsStorage
