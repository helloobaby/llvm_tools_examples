	.text
	.def	 @feat.00;
	.scl	3;
	.type	0;
	.endef
	.globl	@feat.00
.set @feat.00, 0
	.intel_syntax noprefix
	.file	"test"
	.def	 root;
	.scl	2;
	.type	32;
	.endef
	.globl	root                            # -- Begin function root
	.p2align	4, 0x90
root:                                   # @root
# %bb.0:                                # %entry
	mov	qword ptr [rip + __unnamed_1], 4096
	mov	qword ptr [rip + __unnamed_1], 4101
	mov	qword ptr [rip + __unnamed_1], 4106
	mov	qword ptr [rip + __unnamed_1], 4108
	mov	eax, dword ptr [rip + ecx]
	mov	ecx, eax
	and	ecx, 15
	mov	r8d, 3
	sub	r8d, ecx
	mov	ecx, eax
	xor	ecx, 243
	mov	edx, 243
	sub	edx, eax
	setb	byte ptr [rip + cf]
	sete	byte ptr [rip + zf]
	sets	byte ptr [rip + sf]
	mov	eax, edx
	xor	eax, 243
	cmp	r8d, 16
	setae	byte ptr [rip + az]
	test	ecx, eax
	sets	byte ptr [rip + of]
	test	dl, dl
	setp	byte ptr [rip + pf]
	mov	dword ptr [rip + eax], edx
	ret
                                        # -- End function
	.lcomm	__unnamed_1,8,8                 # @0
	.lcomm	cf,1                            # @cf
	.lcomm	pf,1                            # @pf
	.lcomm	az,1                            # @az
	.lcomm	zf,1                            # @zf
	.lcomm	sf,1                            # @sf
	.lcomm	tf,1                            # @tf
	.lcomm	if,1                            # @if
	.lcomm	df,1                            # @df
	.lcomm	of,1                            # @of
	.lcomm	iopl,1                          # @iopl
	.lcomm	nt,1                            # @nt
	.lcomm	rf,1                            # @rf
	.lcomm	vm,1                            # @vm
	.lcomm	ac,1                            # @ac
	.lcomm	vif,1                           # @vif
	.lcomm	vip,1                           # @vip
	.lcomm	id,1                            # @id
	.lcomm	eflags,4,4                      # @eflags
	.lcomm	ss,2,2                          # @ss
	.lcomm	cs,2,2                          # @cs
	.lcomm	ds,2,2                          # @ds
	.lcomm	es,2,2                          # @es
	.lcomm	fs,2,2                          # @fs
	.lcomm	gs,2,2                          # @gs
	.lcomm	st0,16,16                       # @st0
	.lcomm	st1,16,16                       # @st1
	.lcomm	st2,16,16                       # @st2
	.lcomm	st3,16,16                       # @st3
	.lcomm	st4,16,16                       # @st4
	.lcomm	st5,16,16                       # @st5
	.lcomm	st6,16,16                       # @st6
	.lcomm	st7,16,16                       # @st7
	.lcomm	fpu_stat_IE,1                   # @fpu_stat_IE
	.lcomm	fpu_stat_DE,1                   # @fpu_stat_DE
	.lcomm	fpu_stat_ZE,1                   # @fpu_stat_ZE
	.lcomm	fpu_stat_OE,1                   # @fpu_stat_OE
	.lcomm	fpu_stat_UE,1                   # @fpu_stat_UE
	.lcomm	fpu_stat_PE,1                   # @fpu_stat_PE
	.lcomm	fpu_stat_SF,1                   # @fpu_stat_SF
	.lcomm	fpu_stat_ES,1                   # @fpu_stat_ES
	.lcomm	fpu_stat_C0,1                   # @fpu_stat_C0
	.lcomm	fpu_stat_C1,1                   # @fpu_stat_C1
	.lcomm	fpu_stat_C2,1                   # @fpu_stat_C2
	.lcomm	fpu_stat_C3,1                   # @fpu_stat_C3
	.lcomm	fpu_stat_TOP,1                  # @fpu_stat_TOP
	.lcomm	fpu_stat_B,1                    # @fpu_stat_B
	.lcomm	fpu_control_IM,1                # @fpu_control_IM
	.lcomm	fpu_control_DM,1                # @fpu_control_DM
	.lcomm	fpu_control_ZM,1                # @fpu_control_ZM
	.lcomm	fpu_control_OM,1                # @fpu_control_OM
	.lcomm	fpu_control_UM,1                # @fpu_control_UM
	.lcomm	fpu_control_PM,1                # @fpu_control_PM
	.lcomm	fpu_control_PC,1                # @fpu_control_PC
	.lcomm	fpu_control_RC,1                # @fpu_control_RC
	.lcomm	fpu_control_X,1                 # @fpu_control_X
	.lcomm	fp0,8,8                         # @fp0
	.lcomm	fp1,8,8                         # @fp1
	.lcomm	fp2,8,8                         # @fp2
	.lcomm	fp3,8,8                         # @fp3
	.lcomm	fp4,8,8                         # @fp4
	.lcomm	fp5,8,8                         # @fp5
	.lcomm	fp6,8,8                         # @fp6
	.lcomm	fp7,8,8                         # @fp7
	.lcomm	k0,8,8                          # @k0
	.lcomm	k1,8,8                          # @k1
	.lcomm	k2,8,8                          # @k2
	.lcomm	k3,8,8                          # @k3
	.lcomm	k4,8,8                          # @k4
	.lcomm	k5,8,8                          # @k5
	.lcomm	k6,8,8                          # @k6
	.lcomm	k7,8,8                          # @k7
	.lcomm	mm0,8,8                         # @mm0
	.lcomm	mm1,8,8                         # @mm1
	.lcomm	mm2,8,8                         # @mm2
	.lcomm	mm3,8,8                         # @mm3
	.lcomm	mm4,8,8                         # @mm4
	.lcomm	mm5,8,8                         # @mm5
	.lcomm	mm6,8,8                         # @mm6
	.lcomm	mm7,8,8                         # @mm7
	.lcomm	xmm0,16,8                       # @xmm0
	.lcomm	xmm1,16,8                       # @xmm1
	.lcomm	xmm2,16,8                       # @xmm2
	.lcomm	xmm3,16,8                       # @xmm3
	.lcomm	xmm4,16,8                       # @xmm4
	.lcomm	xmm5,16,8                       # @xmm5
	.lcomm	xmm6,16,8                       # @xmm6
	.lcomm	xmm7,16,8                       # @xmm7
	.lcomm	xmm8,16,8                       # @xmm8
	.lcomm	xmm9,16,8                       # @xmm9
	.lcomm	xmm10,16,8                      # @xmm10
	.lcomm	xmm11,16,8                      # @xmm11
	.lcomm	xmm12,16,8                      # @xmm12
	.lcomm	xmm13,16,8                      # @xmm13
	.lcomm	xmm14,16,8                      # @xmm14
	.lcomm	xmm15,16,8                      # @xmm15
	.lcomm	xmm16,16,8                      # @xmm16
	.lcomm	xmm17,16,8                      # @xmm17
	.lcomm	xmm18,16,8                      # @xmm18
	.lcomm	xmm19,16,8                      # @xmm19
	.lcomm	xmm20,16,8                      # @xmm20
	.lcomm	xmm21,16,8                      # @xmm21
	.lcomm	xmm22,16,8                      # @xmm22
	.lcomm	xmm23,16,8                      # @xmm23
	.lcomm	xmm24,16,8                      # @xmm24
	.lcomm	xmm25,16,8                      # @xmm25
	.lcomm	xmm26,16,8                      # @xmm26
	.lcomm	xmm27,16,8                      # @xmm27
	.lcomm	xmm28,16,8                      # @xmm28
	.lcomm	xmm29,16,8                      # @xmm29
	.lcomm	xmm30,16,8                      # @xmm30
	.lcomm	xmm31,16,8                      # @xmm31
	.lcomm	ymm0,32,16                      # @ymm0
	.lcomm	ymm1,32,16                      # @ymm1
	.lcomm	ymm2,32,16                      # @ymm2
	.lcomm	ymm3,32,16                      # @ymm3
	.lcomm	ymm4,32,16                      # @ymm4
	.lcomm	ymm5,32,16                      # @ymm5
	.lcomm	ymm6,32,16                      # @ymm6
	.lcomm	ymm7,32,16                      # @ymm7
	.lcomm	ymm8,32,16                      # @ymm8
	.lcomm	ymm9,32,16                      # @ymm9
	.lcomm	ymm10,32,16                     # @ymm10
	.lcomm	ymm11,32,16                     # @ymm11
	.lcomm	ymm12,32,16                     # @ymm12
	.lcomm	ymm13,32,16                     # @ymm13
	.lcomm	ymm14,32,16                     # @ymm14
	.lcomm	ymm15,32,16                     # @ymm15
	.lcomm	ymm16,32,16                     # @ymm16
	.lcomm	ymm17,32,16                     # @ymm17
	.lcomm	ymm18,32,16                     # @ymm18
	.lcomm	ymm19,32,16                     # @ymm19
	.lcomm	ymm20,32,16                     # @ymm20
	.lcomm	ymm21,32,16                     # @ymm21
	.lcomm	ymm22,32,16                     # @ymm22
	.lcomm	ymm23,32,16                     # @ymm23
	.lcomm	ymm24,32,16                     # @ymm24
	.lcomm	ymm25,32,16                     # @ymm25
	.lcomm	ymm26,32,16                     # @ymm26
	.lcomm	ymm27,32,16                     # @ymm27
	.lcomm	ymm28,32,16                     # @ymm28
	.lcomm	ymm29,32,16                     # @ymm29
	.lcomm	ymm30,32,16                     # @ymm30
	.lcomm	ymm31,32,16                     # @ymm31
	.lcomm	zmm0,64,16                      # @zmm0
	.lcomm	zmm1,64,16                      # @zmm1
	.lcomm	zmm2,64,16                      # @zmm2
	.lcomm	zmm3,64,16                      # @zmm3
	.lcomm	zmm4,64,16                      # @zmm4
	.lcomm	zmm5,64,16                      # @zmm5
	.lcomm	zmm6,64,16                      # @zmm6
	.lcomm	zmm7,64,16                      # @zmm7
	.lcomm	zmm8,64,16                      # @zmm8
	.lcomm	zmm9,64,16                      # @zmm9
	.lcomm	zmm10,64,16                     # @zmm10
	.lcomm	zmm11,64,16                     # @zmm11
	.lcomm	zmm12,64,16                     # @zmm12
	.lcomm	zmm13,64,16                     # @zmm13
	.lcomm	zmm14,64,16                     # @zmm14
	.lcomm	zmm15,64,16                     # @zmm15
	.lcomm	zmm16,64,16                     # @zmm16
	.lcomm	zmm17,64,16                     # @zmm17
	.lcomm	zmm18,64,16                     # @zmm18
	.lcomm	zmm19,64,16                     # @zmm19
	.lcomm	zmm20,64,16                     # @zmm20
	.lcomm	zmm21,64,16                     # @zmm21
	.lcomm	zmm22,64,16                     # @zmm22
	.lcomm	zmm23,64,16                     # @zmm23
	.lcomm	zmm24,64,16                     # @zmm24
	.lcomm	zmm25,64,16                     # @zmm25
	.lcomm	zmm26,64,16                     # @zmm26
	.lcomm	zmm27,64,16                     # @zmm27
	.lcomm	zmm28,64,16                     # @zmm28
	.lcomm	zmm29,64,16                     # @zmm29
	.lcomm	zmm30,64,16                     # @zmm30
	.lcomm	zmm31,64,16                     # @zmm31
	.lcomm	dr0,4,4                         # @dr0
	.lcomm	dr1,4,4                         # @dr1
	.lcomm	dr2,4,4                         # @dr2
	.lcomm	dr3,4,4                         # @dr3
	.lcomm	dr4,4,4                         # @dr4
	.lcomm	dr5,4,4                         # @dr5
	.lcomm	dr6,4,4                         # @dr6
	.lcomm	dr7,4,4                         # @dr7
	.lcomm	dr8,4,4                         # @dr8
	.lcomm	dr9,4,4                         # @dr9
	.lcomm	dr10,4,4                        # @dr10
	.lcomm	dr11,4,4                        # @dr11
	.lcomm	dr12,4,4                        # @dr12
	.lcomm	dr13,4,4                        # @dr13
	.lcomm	dr14,4,4                        # @dr14
	.lcomm	dr15,4,4                        # @dr15
	.lcomm	cr0,4,4                         # @cr0
	.lcomm	cr1,4,4                         # @cr1
	.lcomm	cr2,4,4                         # @cr2
	.lcomm	cr3,4,4                         # @cr3
	.lcomm	cr4,4,4                         # @cr4
	.lcomm	cr5,4,4                         # @cr5
	.lcomm	cr6,4,4                         # @cr6
	.lcomm	cr7,4,4                         # @cr7
	.lcomm	cr8,4,4                         # @cr8
	.lcomm	cr9,4,4                         # @cr9
	.lcomm	cr10,4,4                        # @cr10
	.lcomm	cr11,4,4                        # @cr11
	.lcomm	cr12,4,4                        # @cr12
	.lcomm	cr13,4,4                        # @cr13
	.lcomm	cr14,4,4                        # @cr14
	.lcomm	cr15,4,4                        # @cr15
	.lcomm	fpsw,4,4                        # @fpsw
	.lcomm	eax,4,4                         # @eax
	.lcomm	ecx,4,4                         # @ecx
	.lcomm	edx,4,4                         # @edx
	.lcomm	ebx,4,4                         # @ebx
	.lcomm	esp,4,4                         # @esp
	.lcomm	ebp,4,4                         # @ebp
	.lcomm	esi,4,4                         # @esi
	.lcomm	edi,4,4                         # @edi
	.lcomm	eip,4,4                         # @eip
	.lcomm	eiz,4,4                         # @eiz
