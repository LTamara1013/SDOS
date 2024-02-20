	.file "..\src\Normalization.c";
//  Compilation time: Mon Feb  1 19:27:52 2021
//  Compiler options: -c -file-attr ProjectName=AudioProcessing -proc ADSP-21489 -flags-compiler --no_wrap_diagnostics -si-revision 0.2 -g -save-temps -path-output .\src -DCORE0 -D_DEBUG -ID:/CrossCore/Workspace/AudioProcessing/system -structs-do-not-overlap -no-const-strings -multiline -warn-protos -Wremarks -double-size-32 -swc -gnu-style-dependencies -MD -Mo src\Normalization.d -o src\Normalization.doj
//  Compiler version: 8.15.1.0 (61a2eff16741378b1ae40f6392a0806696679a50)
//  Architecture: ADSP-21489
//  Silicon revision: 0.2
//  Anomalies summary:
//   Disabled: w_anomaly_45, w_anomaly_2126x_4, w_dag_stall, w_2136x_multi, w_2136x_mem_write, w_09000014, w_09000018, w_09000020, w_07000009_1, w_07000009_2, w_09000021, w_09000022, w_15000011, w_09000023, w_15000016, w_15000023, w_20000002, w_20000022, w_20000020, w_20000024, w_20000023, w_20000009, w_20000069, w_20000083
//   Enabled: w_15000003, w_15000004, w_15000005
//   Always on: w_simd, w_restore_loop_stack

	.section/SW/DOUBLE32 seg_swco;

.epctext:

_max_abs_value:
.LN_max_abs_value:
//-------------------------------------------------------------------
//  Procedure statistics:
//  Frame size            = 8 words
//  Scratch registers used: {r0-r2,r8,i4,i12,m4,acc}
//  No call preserved registers used.
//Inlined in _max_abs_value:
//  ..\src\Normalization.c:23:26'_fabs
//  ..\src\Normalization.c:22:17'_fabs
//-------------------------------------------------------------------
// line "..\src\Normalization.c":19
	modify(i7,-6);
	dm(-6,i6)=r8;
	dm(-7,i6)=r4;
.LN0:
// line 20
	i12=0;
	dm(-5,i6)=i12;
.LN1:
// line 21
	dm(-4,i6)=m13;

.P34L1:
//-------------------------------------------------------------------
//   Loop at "..\src\Normalization.c" line 21 col 5
//-------------------------------------------------------------------
.LN2:
	r2=dm(-4,i6);
	r1=dm(-6,i6);
	comp(r1,r2);
	if le jump (pc,.P34L3);

.LN3:
// line 22
	i4=dm(-7,i6);
	m4=r2;
	r8=dm(m4,i4);
.LN4:
	dm(-3,i6)=r8;
.LN5:
// line "D:\CrossCore\SHARC\include\math.h":275
	f2=abs f8;
.LN6:
// line "..\src\Normalization.c":22
	r1=dm(-5,i6);
	comp(f1,f2);
	r2=m5;
	if lt r2=m6;
	r2=pass r2;
	if eq jump (pc,.P34L5);

.LN7:
// line 23
	r8=dm(m4,i4);
.LN8:
	dm(-2,i6)=r8;
.LN9:
// line "D:\CrossCore\SHARC\include\math.h":275
	f2=abs f8;
.LN10:
// line "..\src\Normalization.c":23
	dm(-5,i6)=r2;
.LN11:
// line 24
	jump (pc,.P34L6);

.P34L5:

.P34L6:
.LN12:
// line 21
	r2=dm(-4,i6);
	r2=r2+1;
	dm(-4,i6)=r2;
	jump (pc,.P34L1);
//-------------------------------------------------------------------
//   End Loop L1
//-------------------------------------------------------------------

.P34L3:
//-------------------------------------------------------------------
//   Part of top level (no loop)
//-------------------------------------------------------------------
.LN13:
// line 26
	r0=dm(-5,i6);
	i12=dm(m7,i6);
	jump (m14,i12) (db); rframe; nop;
.LN._max_abs_value.end:
._max_abs_value.end:
	.global _max_abs_value;
	.type _max_abs_value,STT_FUNC;

_normalization:
.LN_normalization:
//-------------------------------------------------------------------
//  Procedure statistics:
//  Frame size            = 8 words
//  Scratch registers used: {r1-r2,r4,r8,i4,i12,m4,acc,mcc}
//  No call preserved registers used.
//  Registers that could be clobbered by function calls: {r0-r2,r4,r8,r12,s0-s15,i4,i12-i13,b4,b12-b13,m4,m12,ustat1-ustat4,acc,mcc,scc,btf,sacc,smcc,sscc,sbtf,stky,stkyy,msf,msb,lcntr,px}
//-------------------------------------------------------------------
// line "..\src\Normalization.c":36
	modify(i7,-6);
	dm(-5,i6)=r8;
	dm(-6,i6)=r4;
.LN14:
// line 37
	cjump _max_abs_value (db); dm(i7,m7)=r2; dm(i7,m7)=.LCJ0-1;
.LCJ0:
	r8=r0;
.LN15:
	dm(-4,i6)=r0;
.LN16:
// line 38
	r4=1065353216;
	call (pc,___lib_fdiv);                  // floating-point division is implemented as a library call. There is 1 more instruction related to this call. 
	dm(-3,i6)=r0;
.LN17:
// line 40
	dm(-2,i6)=m13;

.P35L1:
//-------------------------------------------------------------------
//   Loop at "..\src\Normalization.c" line 40 col 5
//-------------------------------------------------------------------
//   This loop executes 1 iteration of the original loop in an estimated 19 
//   cycles (includes 5 stalls).
//-------------------------------------------------------------------
//   This loop's resource usage is:
//     dm dag                          used  11 out of   19 ( 57.9%)
//     pm dag                          used  11 out of   19 ( 57.9%)
//     shift immediate                 used  11 out of   19 ( 57.9%)
//     multifunction float multiply    used   6 out of   19 ( 31.6%)
//     multifunction mult              used   6 out of   19 ( 31.6%)
//     memory access                   used  11 out of   38 ( 28.9%)
//     multifunction alu               used   5 out of   19 ( 26.3%)
//     multifunction integer add sub   used   5 out of   19 ( 26.3%)
//     multifunction integer multiply  used   5 out of   19 ( 26.3%)
//-------------------------------------------------------------------
	// -- 2 stalls --
.LN18:
	r2=dm(-2,i6);
	r1=dm(-5,i6);
	comp(r1,r2);
	// -- stall --
	if le jump (pc,.P35L3);

.LN19:
// line 41
	r4=dm(-3,i6);
	i4=dm(-6,i6);
	m4=r2;
	// -- 2 stalls --
	r2=dm(m4,i4);
	f2=f2*f4;
	dm(m4,i4)=r2;
.LN20:
// line 40
	r2=dm(-2,i6);
	r2=r2+1;
	dm(-2,i6)=r2;
	jump (pc,.P35L1);
//-------------------------------------------------------------------
//   End Loop L1
//-------------------------------------------------------------------

.P35L3:
//-------------------------------------------------------------------
//   Part of top level (no loop)
//-------------------------------------------------------------------
.LN21:
// line 43
	i12=dm(m7,i6);
	jump (m14,i12) (db); rframe; nop;
.LN._normalization.end:
._normalization.end:
	.global _normalization;
	.type _normalization,STT_FUNC;

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
	.file_attr FuncName="_max_abs_value";
	.file_attr FuncName="_normalization";
	.file_attr Encoding="SW";
	.file_attr Content="CodeData";
.epctext.end:

	.extern ___lib_fdiv;
	.type ___lib_fdiv,STT_FUNC;

	.section .debug_abbrev;

	.align 1;
	.type .epcabbrev,STT_OBJECT;
.epcabbrev:
	.inc/binary ".\src\Normalization.sbn", 0, 282;
.epcabbrev.end:

	.section .debug_info;

	.align 1;
	.type .epcdebug,STT_OBJECT;
.epcdebug:
	.byte =
		0x96,0x0C,0x00,0x00,0x02,0x00;
	.var = .epcabbrev;
	.byte =
		0x04,0x01,0x2E,0x2E,0x5C,0x73,0x72,0x63,0x5C,0x4E,0x6F,0x72,
		0x6D,0x61,0x6C,0x69,0x7A,0x61,0x74,0x69,0x6F,0x6E,0x2E,0x63,
		0x00,0x0C;
	.var = .epcline;
	.inc/binary ".\src\Normalization.sbn", 282, 2859;
	.var = .LN_max_abs_value;
	.var = .LN._max_abs_value.end;
	.byte =
		0x01,0x08,0x03,0x00,0x00,0x01,0x00,0x12,0x61,0x72,0x72,0x61,
		0x79,0x00,0xC1,0x0B,0x00,0x00,0x02,0x86,0x79,0x00,0x12,0x73,
		0x69,0x7A,0x65,0x00,0xE4,0x01,0x00,0x00,0x02,0x86,0x7A,0x00,
		0x13,0x00,0x00,0x00,0x00;
	.var = .LN0;
	.var = .LN._max_abs_value.end;
	.byte =
		0x14,0x6D,0x61,0x78,0x56,0x61,0x6C,0x00,0x01,0x08,0x03,0x00,
		0x00,0x02,0x86,0x7B;
	.var = .LN0-.LN_max_abs_value;
	.byte =
		0x00,0x13,0x00,0x00,0x00,0x00;
	.var = .LN1;
	.var = .LN13;
	.byte =
		0x14,0x69,0x00,0x01,0xE4,0x01,0x00,0x00,0x02,0x86,0x7C,0x00,
		0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x07,0x00,0x08,0x03,0x00,
		0x00,0x15,0x6D,0x0C,0x00,0x00,0x6E,0x6F,0x72,0x6D,0x61,0x6C,
		0x69,0x7A,0x61,0x74,0x69,0x6F,0x6E,0x00,0x01;
	.var = .LN_normalization;
	.var = .LN._normalization.end;
	.byte =
		0x01,0x01,0x00,0x12,0x69,0x6E,0x70,0x75,0x74,0x5F,0x73,0x69,
		0x67,0x6E,0x61,0x6C,0x00,0xC1,0x0B,0x00,0x00,0x02,0x86,0x7A,
		0x00,0x12,0x73,0x69,0x67,0x6E,0x61,0x6C,0x5F,0x6C,0x65,0x6E,
		0x67,0x74,0x68,0x00,0xE4,0x01,0x00,0x00,0x02,0x86,0x7B,0x00,
		0x13,0x00,0x00,0x00,0x00;
	.var = .LN14;
	.var = .LN._normalization.end;
	.byte =
		0x14,0x6D,0x61,0x78,0x5F,0x76,0x61,0x6C,0x75,0x65,0x00,0x01,
		0x08,0x03,0x00,0x00,0x02,0x86,0x7C,0x00,0x00,0x00,0x00,0x00,
		0x14,0x6D,0x61,0x78,0x56,0x61,0x6C,0x00,0x01,0x08,0x03,0x00,
		0x00,0x02,0x86,0x7D;
	.var = .LN15-.LN_normalization;
	.byte =
		0x00,0x13,0x00,0x00,0x00,0x00;
	.var = .LN17;
	.var = .LN21;
	.byte =
		0x14,0x69,0x00,0x01,0xE4,0x01,0x00,0x00,0x02,0x86,0x7E,0x00,
		0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x14,0x64,0x65,0x6C,0x61,
		0x79,0x42,0x75,0x66,0x66,0x65,0x72,0x00,0x01,0x8A,0x0C,0x00,
		0x00,0x05,0x03;
	.var = _delayBuffer;
	.byte =
		0x00,0x00,0x00,0x00,0x00,0x08,0x98,0x0C,0x00,0x00,0x08,0x03,
		0x00,0x00,0x09,0x22,0x00,0x21,0x00,0x00,0x00;
.epcdebug.end:

	.section .debug_line;

	.align 1;
	.type .epcline,STT_OBJECT;
.epcline:
	.inc/binary ".\src\Normalization.sbn", 3141, 633;
	.var = .LN_max_abs_value;
	.byte =
		0x04,0x01,0x05,0x2D,0x1B,0x00,0x05,0x02;
	.var = .LN0;
	.byte =
		0x05,0x0B,0x0A,0x00,0x05,0x02;
	.var = .LN1;
	.byte =
		0x05,0x10,0x0A,0x00,0x05,0x02;
	.var = .LN2;
	.byte =
		0x05,0x05,0x01,0x00,0x05,0x02;
	.var = .LN3;
	.byte =
		0x05,0x09,0x0A,0x00,0x05,0x02;
	.var = .LN4;
	.byte =
		0x05,0x11,0x01,0x00,0x05,0x02;
	.var = .LN5;
	.byte =
		0x04,0x0A,0x05,0x0C,0x03,0xFD,0x01,0x01,0x00,0x05,0x02;
	.var = .LN6;
	.byte =
		0x04,0x01,0x05,0x09,0x03,0x83,0x7E,0x01,0x00,0x05,0x02;
	.var = .LN7;
	.byte =
		0x05,0x0D,0x0A,0x00,0x05,0x02;
	.var = .LN8;
	.byte =
		0x05,0x1A,0x01,0x00,0x05,0x02;
	.var = .LN9;
	.byte =
		0x04,0x0A,0x05,0x0C,0x03,0xFC,0x01,0x01,0x00,0x05,0x02;
	.var = .LN10;
	.byte =
		0x04,0x01,0x05,0x0D,0x03,0x84,0x7E,0x01,0x00,0x05,0x02;
	.var = .LN11;
	.byte =
		0x05,0x09,0x0A,0x00,0x05,0x02;
	.var = .LN12;
	.byte =
		0x05,0x1F,0x03,0x7D,0x01,0x00,0x05,0x02;
	.var = .LN13;
	.byte =
		0x05,0x05,0x0E,0x00,0x05,0x02;
	.var = .LN._max_abs_value.end;
	.byte =
		0x00,0x01,0x01,0x00,0x05,0x02;
	.var = .LN_normalization;
	.byte =
		0x04,0x01,0x05,0x3B,0x2C,0x00,0x05,0x02;
	.var = .LN14;
	.byte =
		0x05,0x24,0x0A,0x00,0x05,0x02;
	.var = .LN15;
	.byte =
		0x05,0x15,0x01,0x00,0x05,0x02;
	.var = .LN16;
	.byte =
		0x05,0x12,0x0A,0x00,0x05,0x02;
	.var = .LN17;
	.byte =
		0x05,0x10,0x0B,0x00,0x05,0x02;
	.var = .LN18;
	.byte =
		0x05,0x05,0x01,0x00,0x05,0x02;
	.var = .LN19;
	.byte =
		0x05,0x09,0x0A,0x00,0x05,0x02;
	.var = .LN20;
	.byte =
		0x05,0x28,0x03,0x7F,0x01,0x00,0x05,0x02;
	.var = .LN21;
	.byte =
		0x05,0x01,0x0C,0x00,0x05,0x02;
	.var = .LN._normalization.end;
	.byte =
		0x00,0x01,0x01;
.epcline.end:

	.section .debug_pubnames;

	.align 1;
.epcpubnames:
	.type .epcpubnames,STT_OBJECT;
	.byte =
		0x42,0x00,0x00,0x00,0x02,0x00;
	.var = .epcdebug;
	.byte =
		0x9A,0x0C,0x00,0x00,0x3F,0x0B,0x00,0x00,0x6D,0x61,0x78,0x5F,
		0x61,0x62,0x73,0x5F,0x76,0x61,0x6C,0x75,0x65,0x00,0xC7,0x0B,
		0x00,0x00,0x6E,0x6F,0x72,0x6D,0x61,0x6C,0x69,0x7A,0x61,0x74,
		0x69,0x6F,0x6E,0x00,0x6D,0x0C,0x00,0x00,0x64,0x65,0x6C,0x61,
		0x79,0x42,0x75,0x66,0x66,0x65,0x72,0x00,0x00,0x00,0x00,0x00;
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
	.var = .LN_max_abs_value;
	.var = .LN._max_abs_value.end-.LN_max_abs_value;
	.var = .LN_normalization;
	.var = .LN._normalization.end-.LN_normalization;
	.byte =
		0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00;
.epcaranges.end:

	.section/DM/DOUBLE32 seg_dmda;


	.align 2;
	.var _delayBuffer[34];
	.weak _delayBuffer;
