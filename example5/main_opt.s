	.text
	.def	 @feat.00;
	.scl	3;
	.type	0;
	.endef
	.globl	@feat.00
.set @feat.00, 1
	.intel_syntax noprefix
	.file	"test"
	.def	 _root;
	.scl	2;
	.type	32;
	.endef
	.globl	_root                           # -- Begin function root
	.p2align	4, 0x90
_root:                                  # @root
# %bb.0:                                # %entry
	mov	eax, dword ptr [_eax]
	mov	dword ptr [-16], eax
	mov	dword ptr [-24], 198
	mov	dword ptr [_edi], 268754471
	mov	dword ptr [_eax], 243
	mov	eax, dword ptr [-24]
	mov	ecx, 243
	sub	ecx, eax
	mov	dword ptr [_eax], ecx
	mov	ecx, 268754714
	sub	ecx, eax
	mov	dword ptr [_edi], ecx
	mov	dword ptr [-20], 208
	push	dword ptr [_edi]
	call	___unnamed_1
	add	esp, 4
	ret
                                        # -- End function
	.lcomm	_eax,4,4                        # @eax
	.lcomm	_edi,4,4                        # @edi
