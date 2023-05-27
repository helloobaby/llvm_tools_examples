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
	mov	eax, dword ptr [_ebp]
	lea	ecx, [eax - 24]
	mov	dword ptr [_edx], ecx
	mov	dword ptr [_ebx], 246
	mov	ecx, dword ptr [_eax]
	xor	ecx, eax
	mov	dword ptr [_eax], ecx
	mov	dword ptr [eax - 16], ecx
	mov	eax, dword ptr [_ebp]
	mov	dword ptr [eax - 24], 198
	mov	dword ptr [_eax], 45
	mov	dword ptr [_edi], 268754516
	mov	eax, dword ptr [_ebp]
	mov	dword ptr [eax - 20], 208
	ret
                                        # -- End function
	.lcomm	_eax,4,4                        # @eax
	.lcomm	_edx,4,4                        # @edx
	.lcomm	_ebx,4,4                        # @ebx
	.lcomm	_ebp,4,4                        # @ebp
	.lcomm	_edi,4,4                        # @edi
