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
	push	rsi
	.seh_pushreg rsi
	sub	rsp, 32
	.seh_stackalloc 32
	.seh_endprologue
	call	obfucated
	mov	esi, eax
	call	obfucated2
	add	eax, esi
	add	rsp, 32
	pop	rsi
	ret
	.seh_endproc
                                        # -- End function
	.def	 not_optimized;
	.scl	2;
	.type	32;
	.endef
	.globl	not_optimized                   # -- Begin function not_optimized
	.p2align	4, 0x90
not_optimized:                          # @not_optimized
# %bb.0:
                                        # kill: def $ecx killed $ecx def $rcx
	lea	eax, [rcx + 1]
	ret
                                        # -- End function
	.def	 obfucated;
	.scl	2;
	.type	32;
	.endef
	.globl	obfucated                       # -- Begin function obfucated
	.p2align	4, 0x90
obfucated:                              # @obfucated
# %bb.0:
	mov	eax, 45
	ret
                                        # -- End function
	.def	 obfucated2;
	.scl	2;
	.type	32;
	.endef
	.globl	obfucated2                      # -- Begin function obfucated2
	.p2align	4, 0x90
obfucated2:                             # @obfucated2
.seh_proc obfucated2
# %bb.0:
	sub	rsp, 40
	.seh_stackalloc 40
	.seh_endprologue
	xor	ecx, ecx
	call	not_optimized
	nop
	add	rsp, 40
	ret
	.seh_endproc
                                        # -- End function
