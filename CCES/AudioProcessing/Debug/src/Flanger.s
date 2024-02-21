	.file "..\src\Flanger.c";
//  Compilation time: Mon Feb  1 13:37:26 2021
//  Compiler options: -c -file-attr ProjectName=AudioProcessing -proc ADSP-21489 -flags-compiler --no_wrap_diagnostics -si-revision 0.2 -O -Ov100 -g -save-temps -path-output .\src -DCORE0 -D_DEBUG -ID:/CrossCore/Workspace/AudioProcessing/system -structs-do-not-overlap -no-const-strings -multiline -warn-protos -Wremarks -double-size-32 -swc -gnu-style-dependencies -MD -Mo src\Flanger.d -o src\Flanger.doj
//  Compiler version: 8.15.1.0 (61a2eff16741378b1ae40f6392a0806696679a50)
//  Architecture: ADSP-21489
//  Silicon revision: 0.2
//  Anomalies summary:
//   Disabled: w_anomaly_45, w_anomaly_2126x_4, w_dag_stall, w_2136x_multi, w_2136x_mem_write, w_09000014, w_09000018, w_09000020, w_07000009_1, w_07000009_2, w_09000021, w_09000022, w_15000011, w_09000023, w_15000016, w_15000023, w_20000002, w_20000022, w_20000020, w_20000024, w_20000023, w_20000009, w_20000069, w_20000083
//   Enabled: w_15000003, w_15000004, w_15000005
//   Always on: w_simd, w_restore_loop_stack

	.section/SW/DOUBLE32 seg_swco;

.epctext:

_flanger:
.LN_flanger:
//-------------------------------------------------------------------
//  Procedure statistics:
//  Frame size            = 14 words
//  Scratch registers used: {r0-r2,r4,r8,r12,i12,m4,acc,mcc,lcntr}
//  Call preserved registers used: {r6-r7,r9-r11,r13-r15,i2-i3,i5,m3}
//  Registers that could be clobbered by function calls: {r0-r1,r4,r8,r12,s0-s15,i4,i6-i7,i12-i13,b4,b12-b13,m4,m12,ustat1-ustat4,acc,mcc,scc,btf,sacc,smcc,sscc,sbtf,stky,stkyy,msf,msb,lcntr,px}
//-------------------------------------------------------------------
// line "..\src\Flanger.c":27
	modify(i7,-12);
	r2=m3;
	dm(-5,i6)=r2;
	r2=i2;
	dm(-4,i6)=r2;
	r2=i3;
	dm(-3,i6)=r2;
	r2=i5;
	dm(-9,i6)=r11;
	r14=pass r12, dm(-7,i6)=r14;
	dm(-6,i6)=r15;
	dm(-13,i6)=r6;
	dm(-12,i6)=r7;
	dm(-11,i6)=r9;
	dm(-10,i6)=r10;
	dm(-8,i6)=r13;
	dm(-2,i6)=r2;
.LN0:
// line 28
	r1=1086918619;
.LN1:
// line 27
	r2=dm(m6,i6);
.LN2:
// line 28
	f1=f2*f1, r15=r8;
	r0=951990214;
	f11=f1*f0, i3=r4;
	r2=1177306112;
	r12=mant f11, r10=dm(2,i6);
	f2=f11*f2, i2=r15;
	if not av f2=f2-f1;
	f2=f2*f0, r13=m5;
	if not av f11=f11-f2;
.LN3:
// line 30
	r2=pass r14, i5=modify(i3,m5);
.LN4:
// line 31
	r7=1099169792;
.LN5:
// line 30
	if le jump (pc,.P34L3);

.LN6:
// line 31
	r9=1065353216;
	lcntr=r14, do (pc,.P34L2_end) until lce;

.P34L2:
//-------------------------------------------------------------------
//   Loop at "..\src\Flanger.c" line 30 col 5
//-------------------------------------------------------------------
	f2=float r13, r6=dm(i5,m6);
	f4=f11*f2;
.LN7:
	cjump _sinf (db);
	dm(i7,m7)=r2;
	dm(i7,m7)=.LCJ0-1;
.LCJ0:

.LN8:
	f2=f0+f9;
	f1=f2*f7;
.LN9:
// line 32
	r0=trunc f1;
.LN10:
// line 35
	r2=r13-r0;
.LN11:
// line 33
	f0=float r0, m4=r2;
	f0=f1-f0;
.LN12:
// line 35
	r1=r2-1;
	r1=pass r1;
	// -- stall --
	if lt jump (pc,.P34L6);

.LN13:
// line 37
	f2=f9-f0;
	m3=r1;
	r1=dm(m4,i3);
	// -- stall --
	f1=f1*f2, r2=dm(m3,i3);
	f2=f0*f2;
	f2=f1+f2;
.LN14:
// line 39
	f2=f10*f2;
	f6=f6+f2;

.P34L6:
.LN15:
// line 30
.P34L2_end:
	r13=r13+1, dm(i2,m6)=r6;
.LN16:
	// end loop .P34L2;
//-------------------------------------------------------------------
//   End Loop L2
//-------------------------------------------------------------------

.P34L3:
//-------------------------------------------------------------------
//   Part of top level (no loop)
//-------------------------------------------------------------------
.LN17:
// line 44
	r4=pass r15, r8=r14;
	cjump _normalization (db);
	dm(i7,m7)=r2;
	dm(i7,m7)=.LCJ1-1;
.LCJ1:

.LN18:
// line 45
	i12=dm(m7,i6);
	m3=dm(-5,i6);
	i2=dm(-4,i6);
	i3=dm(-3,i6);
	i5=dm(-2,i6);
	r6=dm(-13,i6);
	r7=dm(-12,i6);
	r9=dm(-11,i6);
	r10=dm(-10,i6);
	r11=dm(-9,i6);
	r13=dm(-8,i6);
	r14=dm(-7,i6);
	jump (m14,i12) (db);
	r15=dm(-6,i6);
	rframe;
.LN._flanger.end:
._flanger.end:
	.global _flanger;
	.type _flanger,STT_FUNC;

_flanger_with_feedback:
.LN_flanger_with_feedback:
//-------------------------------------------------------------------
//  Procedure statistics:
//  Frame size            = 8 words
//  Scratch registers used: {r0-r2,r4,r8,r12,i4,i12,b4,acc,mcc,lcntr}
//  Call preserved registers used: {r14-r15,i2-i3,i5,l4}
//  Registers that could be clobbered by function calls: {r0-r1,r4,r8,r12,s0-s15,i4,i6-i7,i12-i13,b4,b12-b13,m4,m12,ustat1-ustat4,acc,mcc,scc,btf,sacc,smcc,sscc,sbtf,stky,stkyy,msf,msb,lcntr,px}
//-------------------------------------------------------------------
// line "..\src\Flanger.c":118
	modify(i7,-6);
	r2=i2;
	dm(-4,i6)=r2;
	r2=i3;
	dm(-3,i6)=r2;
	r2=i5;
	r14=pass r8, dm(-6,i6)=r14;
	r8=r8-r8, dm(-5,i6)=r15;
	r15=pass r12, i2=r14;
	i3=r4;
	dm(-2,i6)=r2;
.LN19:
// line 120
	r12=34;
	r4=_delayBuffer;
	// -- stall --
	cjump ___memsetD (db);
	dm(i7,m7)=r2;
	dm(i7,m7)=.LCJ2-1;
.LCJ2:

.LN20:
// line 122
	r2=pass r15, i5=i3;
	b4=_delayBuffer;
	if le jump (pc,.P37L3) (db);
.LN21:
// line 118
	r1=dm(2,i6);
	r2=dm(3,i6);

	l4=34;
	lcntr=r15, do (pc,.P37L2_end) until lce;

.P37L2:
//-------------------------------------------------------------------
//   Loop at "..\src\Flanger.c" line 122 col 5
//-------------------------------------------------------------------
//   This loop executes 1 iteration of the original loop in estimated 7 cycles.
//-------------------------------------------------------------------
//   This loop's resource usage is:
//     dm dag                          used   5 out of    7 ( 71.4%)
//     multifunction float multiply    used   3 out of    7 ( 42.9%)
//     multifunction mult              used   3 out of    7 ( 42.9%)
//     memory access                   used   5 out of   14 ( 35.7%)
//     multifunction alu               used   2 out of    7 ( 28.6%)
//     multifunction integer multiply  used   2 out of    7 ( 28.6%)
//     multifunction integer add sub   used   1 out of    7 ( 14.3%)
//-------------------------------------------------------------------
.LN22:
// line 127
	r4=dm(i4,m5);
.LN23:
// line 129
	f12=f1*f4, r8=dm(i3,m6);
	f12=f2*f4, f0=f8+f12;
	dm(i4,m6)=r0;
.LN24:
// line 131
	r0=dm(i5,m6);
	f0=f12+f0;
.P37L2_end:
	dm(i2,m6)=r0;
.LN25:
// line 122
	// end loop .P37L2;
//-------------------------------------------------------------------
//   End Loop L2
//-------------------------------------------------------------------

.P37L7:
//-------------------------------------------------------------------
//   Part of top level (no loop)
//-------------------------------------------------------------------
	l4=0;

.P37L3:
.LN26:
// line 134
	r4=pass r14, r8=r15;
	cjump _normalization (db);
	dm(i7,m7)=r2;
	dm(i7,m7)=.LCJ3-1;
.LCJ3:

.LN27:
// line 136
	i12=dm(m7,i6);
	i2=dm(-4,i6);
	i3=dm(-3,i6);
	i5=dm(-2,i6);
	r14=dm(-6,i6);
	jump (m14,i12) (db);
	r15=dm(-5,i6);
	rframe;
.LN._flanger_with_feedback.end:
._flanger_with_feedback.end:
	.global _flanger_with_feedback;
	.type _flanger_with_feedback,STT_FUNC;

	.file_attr ProjectName="AudioProcessing";
	.file_attr FuncName="_fabs";
	.file_attr FuncName="_fabsf";
	.file_attr FuncName="_fclipf";
	.file_attr FuncName="_fsignf";
	.file_attr FuncName="_copysignf";
	.file_attr FuncName="_favgf";
	.file_attr FuncName="_fmaxf";
	.file_attr FuncName="_fminf";
	.file_attr FuncName="_llabs";
	.file_attr FuncName="_llmin";
	.file_attr FuncName="_llmax";
	.file_attr FuncName="_favg";
	.file_attr FuncName="_fclip";
	.file_attr FuncName="_fmax";
	.file_attr FuncName="_fmin";
	.file_attr FuncName="_copysign";
	.file_attr FuncName="_fsign";
	.file_attr FuncName="_flanger";
	.file_attr FuncName="_flanger_with_feedback";
	.file_attr Encoding="SW";
	.file_attr Content="CodeData";
.epctext.end:

	.extern _sinf;
	.type _sinf,STT_FUNC;
	.extern _normalization;
	.type _normalization,STT_FUNC;
	.extern ___memsetD;
	.type ___memsetD,STT_FUNC;

	.section .debug_abbrev;

	.align 1;
	.type .epcabbrev,STT_OBJECT;
.epcabbrev:
	.inc/binary ".\src\Flanger.sbn", 0, 259;
.epcabbrev.end:

	.section .debug_info;

	.align 1;
	.type .epcdebug,STT_OBJECT;
.epcdebug:
	.byte =
		0x53,0x0C,0x00,0x00,0x02,0x00;
	.var = .epcabbrev;
	.byte =
		0x04,0x01,0x2E,0x2E,0x5C,0x73,0x72,0x63,0x5C,0x46,0x6C,0x61,
		0x6E,0x67,0x65,0x72,0x2E,0x63,0x00,0x0C;
	.var = .epcline;
	.inc/binary ".\src\Flanger.sbn", 259, 2853;
	.var = .LN_flanger;
	.var = .LN._flanger.end;
	.byte =
		0x01,0x01,0x00,0x12,0x46,0x6C,0x66,0x6F,0x00,0x02,0x03,0x00,
		0x00,0x02,0x86,0x01,0x00,0x12,0x67,0x61,0x69,0x6E,0x00,0x02,
		0x03,0x00,0x00,0x02,0x86,0x02,0x00,0x13,0x00,0x00,0x00,0x00;
	.var = .LN0;
	.var = .LN._flanger.end;
	.byte =
		0x13,0x00,0x00,0x00,0x00;
	.var = .LN3;
	.var = .LN17;
	.byte =
		0x13,0x00,0x00,0x00,0x00;
	.var = .LN4;
	.var = .LN17;
	.byte =
		0x13,0x00,0x00,0x00,0x00;
	.var = .LN13;
	.var = .LN15;
	.byte =
		0x00,0x00,0x00,0x00,0x00,0x11,0x2A,0x0C,0x00,0x00,0x66,0x6C,
		0x61,0x6E,0x67,0x65,0x72,0x5F,0x77,0x69,0x74,0x68,0x5F,0x66,
		0x65,0x65,0x64,0x62,0x61,0x63,0x6B,0x00,0x01;
	.var = .LN_flanger_with_feedback;
	.var = .LN._flanger_with_feedback.end;
	.byte =
		0x01,0x01,0x00,0x12,0x66,0x65,0x65,0x64,0x62,0x61,0x63,0x6B,
		0x5F,0x67,0x61,0x69,0x6E,0x00,0x02,0x03,0x00,0x00,0x02,0x86,
		0x02,0x00,0x12,0x66,0x65,0x65,0x64,0x66,0x6F,0x72,0x77,0x61,
		0x72,0x64,0x5F,0x67,0x61,0x69,0x6E,0x00,0x02,0x03,0x00,0x00,
		0x02,0x86,0x03,0x00,0x13,0x00,0x00,0x00,0x00;
	.var = .LN19;
	.var = .LN._flanger_with_feedback.end;
	.byte =
		0x13,0x00,0x00,0x00,0x00;
	.var = .LN20;
	.var = .LN26;
	.byte =
		0x13,0x00,0x00,0x00,0x00;
	.var = .LN22;
	.var = .LN26;
	.byte =
		0x00,0x00,0x00,0x00,0x14,0x64,0x65,0x6C,0x61,0x79,0x42,0x75,
		0x66,0x66,0x65,0x72,0x00,0x01,0x47,0x0C,0x00,0x00,0x05,0x03;
	.var = _delayBuffer;
	.byte =
		0x00,0x00,0x00,0x00,0x00,0x08,0x55,0x0C,0x00,0x00,0x02,0x03,
		0x00,0x00,0x09,0x22,0x00,0x21,0x00,0x00,0x00;
.epcdebug.end:

	.section .debug_line;

	.align 1;
	.type .epcline,STT_OBJECT;
.epcline:
	.inc/binary ".\src\Flanger.sbn", 3112, 645;
	.var = .LN_flanger;
	.byte =
		0x04,0x01,0x05,0x64,0x23,0x00,0x05,0x02;
	.var = .LN0;
	.byte =
		0x05,0x17,0x0A,0x00,0x05,0x02;
	.var = .LN1;
	.byte =
		0x05,0x64,0x03,0x7F,0x01,0x00,0x05,0x02;
	.var = .LN2;
	.byte =
		0x05,0x17,0x0A,0x00,0x05,0x02;
	.var = .LN3;
	.byte =
		0x05,0x05,0x0B,0x00,0x05,0x02;
	.var = .LN4;
	.byte =
		0x05,0x11,0x0A,0x00,0x05,0x02;
	.var = .LN5;
	.byte =
		0x05,0x05,0x03,0x7F,0x01,0x00,0x05,0x02;
	.var = .LN6;
	.byte =
		0x05,0x11,0x0A,0x00,0x05,0x02;
	.var = .LN7;
	.byte =
		0x05,0x32,0x01,0x00,0x05,0x02;
	.var = .LN8;
	.byte =
		0x05,0x11,0x01,0x00,0x05,0x02;
	.var = .LN9;
	.byte =
		0x05,0x13,0x0A,0x00,0x05,0x02;
	.var = .LN10;
	.byte =
		0x05,0x09,0x0C,0x00,0x05,0x02;
	.var = .LN11;
	.byte =
		0x05,0x14,0x03,0x7E,0x01,0x00,0x05,0x02;
	.var = .LN12;
	.byte =
		0x05,0x09,0x0B,0x00,0x05,0x02;
	.var = .LN13;
	.byte =
		0x05,0x22,0x0B,0x00,0x05,0x02;
	.var = .LN14;
	.byte =
		0x05,0x0D,0x0B,0x00,0x05,0x02;
	.var = .LN15;
	.byte =
		0x05,0x28,0x03,0x77,0x01,0x00,0x05,0x02;
	.var = .LN16;
	.byte =
		0x05,0x05,0x01,0x00,0x05,0x02;
	.var = .LN17;
	.byte =
		0x05,0x12,0x17,0x00,0x05,0x02;
	.var = .LN18;
	.byte =
		0x05,0x01,0x0A,0x00,0x05,0x02;
	.var = .LN._flanger.end;
	.byte =
		0x00,0x01,0x01,0x00,0x05,0x02;
	.var = .LN_flanger_with_feedback;
	.byte =
		0x04,0x01,0x05,0x92,0x01,0x7E,0x00,0x05,0x02;
	.var = .LN19;
	.byte =
		0x05,0x02,0x0B,0x00,0x05,0x02;
	.var = .LN20;
	.byte =
		0x05,0x05,0x0B,0x00,0x05,0x02;
	.var = .LN21;
	.byte =
		0x05,0x92,0x01,0x03,0x7C,0x01,0x00,0x05,0x02;
	.var = .LN22;
	.byte =
		0x05,0x1E,0x12,0x00,0x05,0x02;
	.var = .LN23;
	.byte =
		0x05,0x09,0x0B,0x00,0x05,0x02;
	.var = .LN24;
	.byte =
		0x0B,0x00,0x05,0x02;
	.var = .LN25;
	.byte =
		0x05,0x05,0x03,0x77,0x01,0x00,0x05,0x02;
	.var = .LN26;
	.byte =
		0x05,0x12,0x15,0x00,0x05,0x02;
	.var = .LN27;
	.byte =
		0x05,0x01,0x0B,0x00,0x05,0x02;
	.var = .LN._flanger_with_feedback.end;
	.byte =
		0x00,0x01,0x01;
.epcline.end:

	.section .debug_pubnames;

	.align 1;
.epcpubnames:
	.type .epcpubnames,STT_OBJECT;
	.byte =
		0x44,0x00,0x00,0x00,0x02,0x00;
	.var = .epcdebug;
	.byte =
		0x57,0x0C,0x00,0x00,0x39,0x0B,0x00,0x00,0x66,0x6C,0x61,0x6E,
		0x67,0x65,0x72,0x00,0xA7,0x0B,0x00,0x00,0x66,0x6C,0x61,0x6E,
		0x67,0x65,0x72,0x5F,0x77,0x69,0x74,0x68,0x5F,0x66,0x65,0x65,
		0x64,0x62,0x61,0x63,0x6B,0x00,0x2A,0x0C,0x00,0x00,0x64,0x65,
		0x6C,0x61,0x79,0x42,0x75,0x66,0x66,0x65,0x72,0x00,0x00,0x00,
		0x00,0x00;
.epcpubnames.end:

	.section .debug_aranges;

	.align 1;
.epcaranges:
	.type .epcaranges,STT_OBJECT;
	.byte =
		0x20,0x00,0x00,0x00,0x02,0x00;
	.var = .epcdebug;
	.byte =
		0x01,0x00;
	.var = .LN_flanger;
	.var = .LN._flanger.end-.LN_flanger;
	.var = .LN_flanger_with_feedback;
	.var = .LN._flanger_with_feedback.end-.LN_flanger_with_feedback;
	.byte =
		0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00;
.epcaranges.end:

	.section/DM/DOUBLE32 seg_dmda;


	.align 2;
	.var _delayBuffer[34];
	.weak _delayBuffer;
