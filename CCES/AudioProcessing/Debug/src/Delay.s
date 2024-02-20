	.file "..\src\Delay.c";
//  Compilation time: Mon Feb  1 19:27:51 2021
//  Compiler options: -c -file-attr ProjectName=AudioProcessing -proc ADSP-21489 -flags-compiler --no_wrap_diagnostics -si-revision 0.2 -g -save-temps -path-output .\src -DCORE0 -D_DEBUG -ID:/CrossCore/Workspace/AudioProcessing/system -structs-do-not-overlap -no-const-strings -multiline -warn-protos -Wremarks -double-size-32 -swc -gnu-style-dependencies -MD -Mo src\Delay.d -o src\Delay.doj
//  Compiler version: 8.15.1.0 (61a2eff16741378b1ae40f6392a0806696679a50)
//  Architecture: ADSP-21489
//  Silicon revision: 0.2
//  Anomalies summary:
//   Disabled: w_anomaly_45, w_anomaly_2126x_4, w_dag_stall, w_2136x_multi, w_2136x_mem_write, w_09000014, w_09000018, w_09000020, w_07000009_1, w_07000009_2, w_09000021, w_09000022, w_15000011, w_09000023, w_15000016, w_15000023, w_20000002, w_20000022, w_20000020, w_20000024, w_20000023, w_20000009, w_20000069, w_20000083
//   Enabled: w_15000003, w_15000004, w_15000005
//   Always on: w_simd, w_restore_loop_stack

	.section/SW/DOUBLE32 seg_swco;

.epctext:

_delay_with_feedback:
.LN_delay_with_feedback:
//-------------------------------------------------------------------
//  Procedure statistics:
//  Frame size            = 12 words
//  Scratch registers used: {r1-r2,r4,r8,r12,i4,i12,m4,acc,mcc}
//  Call preserved registers used: {r14-r15}
//  Registers that could be clobbered by function calls: {r0-r2,r4,r8,r12,s0-s15,i4,i12-i13,b4,b12-b13,m4,m12,ustat1-ustat4,acc,mcc,scc,btf,sacc,smcc,sscc,sbtf,stky,stkyy,msf,msb,lcntr,px}
//-------------------------------------------------------------------
// line "..\src\Delay.c":34
	modify(i7,-10);
	dm(-10,i6)=r14;
	dm(-9,i6)=r15;
	r2=dm(m6,i6);
	r1=dm(2,i6);
	dm(2,i6)=r1;
	dm(m6,i6)=r2;
	dm(-6,i6)=r12;
	dm(-7,i6)=r8;
	dm(-8,i6)=r4;
.LN0:
// line 36
	dm(-5,i6)=m13;

.P34L1:
//-------------------------------------------------------------------
//   Loop at "..\src\Delay.c" line 36 col 5
//-------------------------------------------------------------------
.LN1:
	r15=dm(-5,i6);
	r2=dm(-6,i6);
	comp(r2,r15);
	if le jump (pc,.P34L3);

.LN2:
// line 37
	i4=dm(-8,i6);
	m4=r15;
	r2=dm(m4,i4);
	dm(-4,i6)=r2;
.LN3:
// line 38
	r14=33;
	r8=33;
	r4=dm(-5,i6);
	cjump ___divrem_s32 (db); dm(i7,m7)=r2; dm(i7,m7)=.LCJ0-1;// modulo is implemented as a library call. There is 1 more instruction related to this call. 
.LCJ0:
	m4=r1;
	dm(-3,i6)=r1;
.LN4:
// line 39
	i4=_delayBuffer;
	r2=dm(m4,i4);
	dm(-2,i6)=r2;
	comp(r15,r14);
.LN5:
// line 41
	if lt jump (pc,.P34L5);

.LN6:
// line 42
	r8=dm(-4,i6);
	r2=dm(m6,i6);
	r4=dm(-2,i6);
	f12=f2*f4;
	f2=f8+f12;
	dm(m4,i4)=r2;
.LN7:
// line 43
	r8=dm(-4,i6);
	r2=dm(2,i6);
	r4=dm(-2,i6);
	f12=f2*f4;
	f2=f8+f12;
	i4=dm(-7,i6);
	m4=dm(-5,i6);
	dm(m4,i4)=r2;
.LN8:
// line 44
	jump (pc,.P34L6);

.P34L5:
.LN9:
// line 45
	r2=dm(-4,i6);
	i4=dm(-7,i6);
	m4=dm(-5,i6);
	dm(m4,i4)=r2;

.P34L6:
.LN10:
// line 36
	r2=dm(-5,i6);
	r2=r2+1;
	dm(-5,i6)=r2;
	jump (pc,.P34L1);
//-------------------------------------------------------------------
//   End Loop L1
//-------------------------------------------------------------------

.P34L3:
//-------------------------------------------------------------------
//   Part of top level (no loop)
//-------------------------------------------------------------------
.LN11:
// line 50
	r4=dm(-7,i6);
	r8=dm(-6,i6);
.LN12:
	cjump _normalization (db); dm(i7,m7)=r2; dm(i7,m7)=.LCJ1-1;
.LCJ1:
.LN13:
// line 51
	r14=dm(-10,i6);
	r15=dm(-9,i6);
	i12=dm(m7,i6);
	jump (m14,i12) (db); rframe; nop;
.LN._delay_with_feedback.end:
._delay_with_feedback.end:
	.global _delay_with_feedback;
	.type _delay_with_feedback,STT_FUNC;

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
	.file_attr FuncName="_delay_with_feedback";
	.file_attr Encoding="SW";
	.file_attr Content="CodeData";
.epctext.end:

	.extern ___divrem_s32;
	.type ___divrem_s32,STT_FUNC;
	.extern _normalization;
	.type _normalization,STT_FUNC;

	.section .debug_abbrev;

	.align 1;
	.type .epcabbrev,STT_OBJECT;
.epcabbrev:
	.inc/binary ".\src\Delay.sbn", 0, 259;
.epcabbrev.end:

	.section .debug_info;

	.align 1;
	.type .epcdebug,STT_OBJECT;
.epcdebug:
	.byte =
		0x8E,0x0C,0x00,0x00,0x02,0x00;
	.var = .epcabbrev;
	.byte =
		0x04,0x01,0x2E,0x2E,0x5C,0x73,0x72,0x63,0x5C,0x44,0x65,0x6C,
		0x61,0x79,0x2E,0x63,0x00,0x0C;
	.var = .epcline;
	.inc/binary ".\src\Delay.sbn", 259, 2865;
	.var = .LN_delay_with_feedback;
	.var = .LN._delay_with_feedback.end;
	.byte =
		0x01,0x01,0x00,0x12,0x69,0x6E,0x70,0x75,0x74,0x5F,0x73,0x69,
		0x67,0x6E,0x61,0x6C,0x00,0x5F,0x0C,0x00,0x00,0x02,0x86,0x78,
		0x00,0x12,0x6F,0x75,0x74,0x70,0x75,0x74,0x5F,0x73,0x69,0x67,
		0x6E,0x61,0x6C,0x00,0x5F,0x0C,0x00,0x00,0x02,0x86,0x79,0x00,
		0x12,0x73,0x69,0x67,0x6E,0x61,0x6C,0x5F,0x6C,0x65,0x6E,0x67,
		0x74,0x68,0x00,0xDC,0x01,0x00,0x00,0x02,0x86,0x7A,0x00,0x12,
		0x66,0x65,0x65,0x64,0x62,0x61,0x63,0x6B,0x5F,0x67,0x61,0x69,
		0x6E,0x00,0x00,0x03,0x00,0x00,0x02,0x86,0x01,0x00,0x12,0x66,
		0x65,0x65,0x64,0x66,0x6F,0x72,0x77,0x61,0x72,0x64,0x5F,0x67,
		0x61,0x69,0x6E,0x00,0x00,0x03,0x00,0x00,0x02,0x86,0x02,0x00,
		0x13,0x00,0x00,0x00,0x00;
	.var = .LN0;
	.var = .LN._delay_with_feedback.end;
	.byte =
		0x13,0x00,0x00,0x00,0x00;
	.var = .LN0;
	.var = .LN11;
	.byte =
		0x14,0x69,0x00,0x01,0xDC,0x01,0x00,0x00,0x02,0x86,0x7B,0x00,
		0x00,0x00,0x00,0x00,0x13,0x00,0x00,0x00,0x00;
	.var = .LN2;
	.var = .LN11;
	.byte =
		0x14,0x69,0x6E,0x70,0x75,0x74,0x5F,0x73,0x61,0x6D,0x70,0x6C,
		0x65,0x00,0x01,0x00,0x03,0x00,0x00,0x02,0x86,0x7C;
	.var = .LN10-.LN2;
	.byte =
		0x00,0x14,0x62,0x75,0x66,0x66,0x65,0x72,0x5F,0x69,0x6E,0x64,
		0x65,0x78,0x00,0x01,0xDC,0x01,0x00,0x00,0x02,0x86,0x7D;
	.var = .LN10-.LN2;
	.byte =
		0x00,0x14,0x64,0x65,0x6C,0x61,0x79,0x65,0x64,0x5F,0x73,0x61,
		0x6D,0x70,0x6C,0x65,0x00,0x01,0x00,0x03,0x00,0x00,0x02,0x86,
		0x7E;
	.var = .LN10-.LN2;
	.byte =
		0x00,0x00,0x00,0x00,0x00,0x07,0x00,0x00,0x03,0x00,0x00,0x14,
		0x64,0x65,0x6C,0x61,0x79,0x42,0x75,0x66,0x66,0x65,0x72,0x00,
		0x01,0x82,0x0C,0x00,0x00,0x05,0x03;
	.var = _delayBuffer;
	.byte =
		0x00,0x00,0x00,0x00,0x00,0x08,0x90,0x0C,0x00,0x00,0x00,0x03,
		0x00,0x00,0x09,0x22,0x00,0x21,0x00,0x00,0x00;
.epcdebug.end:

	.section .debug_line;

	.align 1;
	.type .epcline,STT_OBJECT;
.epcline:
	.inc/binary ".\src\Delay.sbn", 3124, 641;
	.var = .LN_delay_with_feedback;
	.byte =
		0x04,0x01,0x05,0x85,0x01,0x2A,0x00,0x05,0x02;
	.var = .LN0;
	.byte =
		0x05,0x10,0x0B,0x00,0x05,0x02;
	.var = .LN1;
	.byte =
		0x05,0x05,0x01,0x00,0x05,0x02;
	.var = .LN2;
	.byte =
		0x05,0x1C,0x0A,0x00,0x05,0x02;
	.var = .LN3;
	.byte =
		0x05,0x1A,0x0A,0x00,0x05,0x02;
	.var = .LN4;
	.byte =
		0x05,0x1E,0x0A,0x00,0x05,0x02;
	.var = .LN5;
	.byte =
		0x05,0x09,0x0B,0x00,0x05,0x02;
	.var = .LN6;
	.byte =
		0x05,0x0D,0x0A,0x00,0x05,0x02;
	.var = .LN7;
	.byte =
		0x0A,0x00,0x05,0x02;
	.var = .LN8;
	.byte =
		0x05,0x09,0x0A,0x00,0x05,0x02;
	.var = .LN9;
	.byte =
		0x05,0x0D,0x0A,0x00,0x05,0x02;
	.var = .LN10;
	.byte =
		0x05,0x28,0x03,0x77,0x01,0x00,0x05,0x02;
	.var = .LN11;
	.byte =
		0x05,0x05,0x17,0x00,0x05,0x02;
	.var = .LN12;
	.byte =
		0x05,0x12,0x01,0x00,0x05,0x02;
	.var = .LN13;
	.byte =
		0x05,0x01,0x0A,0x00,0x05,0x02;
	.var = .LN._delay_with_feedback.end;
	.byte =
		0x00,0x01,0x01;
.epcline.end:

	.section .debug_pubnames;

	.align 1;
.epcpubnames:
	.type .epcpubnames,STT_OBJECT;
	.byte =
		0x36,0x00,0x00,0x00,0x02,0x00;
	.var = .epcdebug;
	.byte =
		0x92,0x0C,0x00,0x00,0x37,0x0B,0x00,0x00,0x64,0x65,0x6C,0x61,
		0x79,0x5F,0x77,0x69,0x74,0x68,0x5F,0x66,0x65,0x65,0x64,0x62,
		0x61,0x63,0x6B,0x00,0x65,0x0C,0x00,0x00,0x64,0x65,0x6C,0x61,
		0x79,0x42,0x75,0x66,0x66,0x65,0x72,0x00,0x00,0x00,0x00,0x00;
.epcpubnames.end:

	.section .debug_aranges;

	.align 1;
.epcaranges:
	.type .epcaranges,STT_OBJECT;
	.byte =
		0x18,0x00,0x00,0x00,0x02,0x00;
	.var = .epcdebug;
	.byte =
		0x01,0x00;
	.var = .LN_delay_with_feedback;
	.var = .LN._delay_with_feedback.end-.LN_delay_with_feedback;
	.byte =
		0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00;
.epcaranges.end:

	.section/DM/DOUBLE32 seg_dmda;


	.align 2;
	.var _delayBuffer[34];
	.weak _delayBuffer;
