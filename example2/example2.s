	.text
	.def	 @feat.00;
	.scl	3;
	.type	0;
	.endef
	.globl	@feat.00
.set @feat.00, 1
	.intel_syntax noprefix
	.file	"example.c"
	.def	 _main;
	.scl	2;
	.type	32;
	.endef
	.globl	_main                           # -- Begin function main
	.p2align	4, 0x90
_main:                                  # @main
# %bb.0:
	push	eax
	call	_obfucated
	mov	dword ptr [esp], eax            # 4-byte Spill
	call	_obfucated2
	mov	ecx, eax
	mov	eax, dword ptr [esp]            # 4-byte Reload
	add	eax, ecx
	pop	ecx
	ret
                                        # -- End function
	.def	 _not_optimized;
	.scl	2;
	.type	32;
	.endef
	.globl	_not_optimized                  # -- Begin function not_optimized
	.p2align	4, 0x90
_not_optimized:                         # @not_optimized
# %bb.0:
	mov	eax, dword ptr [esp + 4]
	add	eax, 1
	ret
                                        # -- End function
	.def	 _obfucated;
	.scl	2;
	.type	32;
	.endef
	.globl	_obfucated                      # -- Begin function obfucated
	.p2align	4, 0x90
_obfucated:                             # @obfucated
# %bb.0:
	sub	esp, 8
	mov	dword ptr [esp + 4], 198
	mov	dword ptr [esp], -1
	mov	eax, dword ptr [esp]
	sub	eax, 243
	xor	eax, -1
	sub	eax, dword ptr [esp + 4]
	add	esp, 8
	ret
                                        # -- End function
	.def	 _obfucated2;
	.scl	2;
	.type	32;
	.endef
	.globl	_obfucated2                     # -- Begin function obfucated2
	.p2align	4, 0x90
_obfucated2:                            # @obfucated2
# %bb.0:
	sub	esp, 8
	mov	dword ptr [esp + 4], 1111
	xor	eax, eax
	add	eax, 0
	mov	dword ptr [esp], eax
	call	_not_optimized
	add	esp, 8
	ret
                                        # -- End function
	.def	 _obfucated3;
	.scl	2;
	.type	32;
	.endef
	.globl	_obfucated3                     # -- Begin function obfucated3
	.p2align	4, 0x90
_obfucated3:                            # @obfucated3
# %bb.0:                                # %entry
	mov	dword ptr [___unnamed_1+4], 0
	mov	dword ptr [___unnamed_1], 4096
	mov	dword ptr [_edx], 1
	ret
                                        # -- End function
	.lcomm	___unnamed_1,8,8                # @0
	.lcomm	_eax,4,4                        # @eax
	.lcomm	_ecx,4,4                        # @ecx
	.lcomm	_edx,4,4                        # @edx
	.lcomm	_ebx,4,4                        # @ebx
	.lcomm	_esp,4,4                        # @esp
	.lcomm	_ebp,4,4                        # @ebp
	.lcomm	_esi,4,4                        # @esi
	.lcomm	_edi,4,4                        # @edi
	.lcomm	_eip,4,4                        # @eip
	.lcomm	_eiz,4,4                        # @eiz
