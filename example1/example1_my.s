	.text
	.def	 @feat.00;
	.scl	3;
	.type	0;
	.endef
	.globl	@feat.00
.set @feat.00, 0
	.intel_syntax noprefix
	.file	"example.c"
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
	mov	ecx, 5
	call	fib
	nop
	add	rsp, 40
	ret
	.seh_endproc
                                        # -- End function
	.def	 fib;
	.scl	2;
	.type	32;
	.endef
	.globl	fib                             # -- Begin function fib
	.p2align	4, 0x90
fib:                                    # @fib
.seh_proc fib
# %bb.0:
	sub	rsp, 16
	.seh_stackalloc 16
	.seh_endprologue
	mov	dword ptr [rsp + 12], 0
	mov	dword ptr [rsp + 8], 1
	mov	eax, dword ptr [rsp + 12]
	cmp	ecx, dword ptr [rsp + 8]
	sete	dl
	mov	byte ptr [rsp + 7], dl          # 1-byte Spill
	cmp	ecx, eax
	jne	.LBB1_2
.LBB1_1:
	mov	eax, 1
	add	rsp, 16
	ret
.LBB1_2:
	mov	al, byte ptr [rsp + 7]          # 1-byte Reload
	test	al, 1
	jne	.LBB1_1
	jmp	.LBB1_3
.LBB1_3:
	mov	eax, 4294967295
	add	rsp, 16
	ret
	.seh_endproc
                                        # -- End function
