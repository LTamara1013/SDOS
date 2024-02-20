	.file "..\src\Tremolo.c";
//  Compilation time: Mon Feb  1 19:27:53 2021
//  Compiler options: -c -file-attr ProjectName=AudioProcessing -proc ADSP-21489 -flags-compiler --no_wrap_diagnostics -si-revision 0.2 -g -save-temps -path-output .\src -DCORE0 -D_DEBUG -ID:/CrossCore/Workspace/AudioProcessing/system -structs-do-not-overlap -no-const-strings -multiline -warn-protos -Wremarks -double-size-32 -swc -gnu-style-dependencies -MD -Mo src\Tremolo.d -o src\Tremolo.doj
//  Compiler version: 8.15.1.0 (61a2eff16741378b1ae40f6392a0806696679a50)
//  Architecture: ADSP-21489
//  Silicon revision: 0.2
//  Anomalies summary:
//   Disabled: w_anomaly_45, w_anomaly_2126x_4, w_dag_stall, w_2136x_multi, w_2136x_mem_write, w_09000014, w_09000018, w_09000020, w_07000009_1, w_07000009_2, w_09000021, w_09000022, w_15000011, w_09000023, w_15000016, w_15000023, w_20000002, w_20000022, w_20000020, w_20000024, w_20000023, w_20000009, w_20000069, w_20000083
//   Enabled: w_15000003, w_15000004, w_15000005
//   Always on: w_simd, w_restore_loop_stack

	.section/SW/DOUBLE32 seg_swco;

.epctext:

_tremolo:
.LN_tremolo:
//-------------------------------------------------------------------
//  Procedure statistics:
//  Frame size            = 6 words
//  Scratch registers used: {r0-r2,r4,r8,r12,i4,i12,m4,acc,mcc}
//  No call preserved registers used.
//  Registers that could be clobbered by function calls: {r0-r2,r4,r8,r12,s0-s15,i4,i12-i13,b4,b12-b13,m4,m12,ustat1-ustat4,acc,mcc,scc,btf,sacc,smcc,sscc,sbtf,stky,stkyy,msf,msb,lcntr,px}
//-------------------------------------------------------------------
// line "..\src\Tremolo.c":28
	modify(i7,-4);
	r2=dm(m6,i6);
	r1=dm(2,i6);
	dm(2,i6)=r1;
	dm(m6,i6)=r2;
	dm(-3,i6)=r12;
	dm(-4,i6)=r8;
	dm(-5,i6)=r4;
.LN0:
// line 30
	dm(-2,i6)=m13;

.P34L1:
//-------------------------------------------------------------------
//   Loop at "..\src\Tremolo.c" line 30 col 2
//-------------------------------------------------------------------
//   This loop executes 1 iteration of the original loop in an estimated 43 
//   cycles (includes 8 stalls but excludes the cost of function calls).
//-------------------------------------------------------------------
//   This loop's resource usage is:
//     multifunction float multiply    used  24 out of   43 ( 55.8%)
//     multifunction mult              used  24 out of   43 ( 55.8%)
//     multifunction alu               used  22 out of   43 ( 51.2%)
//     multifunction integer multiply  used  22 out of   43 ( 51.2%)
//     multifunction integer add sub   used  21 out of   43 ( 48.8%)
//     dm dag                          used  18 out of   43 ( 41.9%)
//     pm dag                          used  18 out of   43 ( 41.9%)
//     shift immediate                 used  18 out of   43 ( 41.9%)
//     memory access                   used  18 out of   86 ( 20.9%)
//-------------------------------------------------------------------
	// -- 2 stalls --
.LN1:
	r2=dm(-2,i6);
	r1=dm(-3,i6);
	comp(r1,r2);
	// -- stall --
	if le jump (pc,.P34L3);

.LN2:
// line 31
	r1=dm(m6,i6);
	f1=float r1;
	r4=1086918619;
	f1=f1*f4;
	// -- stall --
	f4=float r2;
	f1=f1*f4;
	r0=951990214;
	r2=1177306112;
	f4=f1*f0;
	r12=mant f4;
	f2=f4*f2;
	if not av f2=f2-f1;
	f2=f2*f0;
	if not av f4=f4-f2;
.LN3:
	cjump _sinf (db); dm(i7,m7)=r2; dm(i7,m7)=.LCJ0-1;
.LCJ0:
.LN4:
	r2=dm(2,i6);
	f8=f0*f2;
	r12=1065353216;
	f4=f8+f12;
	i4=dm(-5,i6);
	m4=dm(-2,i6);
	// -- 2 stalls --
	r2=dm(m4,i4);
	f2=f2*f4;
	i4=dm(-4,i6);
	// -- 2 stalls --
	dm(m4,i4)=r2;
.LN5:
// line 30
	r2=dm(-2,i6);
	r2=r2+1;
	dm(-2,i6)=r2;
	jump (pc,.P34L1);
//-------------------------------------------------------------------
//   End Loop L1
//-------------------------------------------------------------------

.P34L3:
//-------------------------------------------------------------------
//   Part of top level (no loop)
//-------------------------------------------------------------------
.LN6:
// line 34
	r4=dm(-4,i6);
	r8=dm(-3,i6);
.LN7:
	cjump _normalization (db); dm(i7,m7)=r2; dm(i7,m7)=.LCJ1-1;
.LCJ1:
.LN8:
// line 36
	i12=dm(m7,i6);
	jump (m14,i12) (db); rframe; nop;
.LN._tremolo.end:
._tremolo.end:
	.global _tremolo;
	.type _tremolo,STT_FUNC;

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
	.file_attr FuncName="_tremolo";
	.file_attr Encoding="SW";
	.file_attr Content="CodeData";
.epctext.end:

	.extern _sinf;
	.type _sinf,STT_FUNC;
	.extern _normalization;
	.type _normalization,STT_FUNC;

	.section .debug_abbrev;

	.align 1;
	.type .epcabbrev,STT_OBJECT;
.epcabbrev:
	.inc/binary ".\src\Tremolo.sbn", 0, 259;
.epcabbrev.end:

	.section .debug_info;

	.align 1;
	.type .epcdebug,STT_OBJECT;
.epcdebug:
	.byte =
		0x0F,0x0C,0x00,0x00,0x02,0x00;
	.var = .epcabbrev;
	.byte =
		0x04,0x01,0x2E,0x2E,0x5C,0x73,0x72,0x63,0x5C,0x54,0x72,0x65,
		0x6D,0x6F,0x6C,0x6F,0x2E,0x63,0x00,0x0C;
	.var = .epcline;
	.inc/binary ".\src\Tremolo.sbn", 259, 2853;
	.var = .LN_tremolo;
	.var = .LN._tremolo.end;
	.byte =
		0x01,0x01,0x00,0x12,0x69,0x6E,0x70,0x75,0x74,0x5F,0x73,0x69,
		0x67,0x6E,0x61,0x6C,0x00,0xE0,0x0B,0x00,0x00,0x02,0x86,0x7B,
		0x00,0x12,0x6F,0x75,0x74,0x70,0x75,0x74,0x5F,0x73,0x69,0x67,
		0x6E,0x61,0x6C,0x00,0xE0,0x0B,0x00,0x00,0x02,0x86,0x7C,0x00,
		0x12,0x73,0x69,0x67,0x6E,0x61,0x6C,0x5F,0x6C,0x65,0x6E,0x67,
		0x74,0x68,0x00,0xDE,0x01,0x00,0x00,0x02,0x86,0x7D,0x00,0x12,
		0x46,0x6C,0x66,0x6F,0x00,0xDE,0x01,0x00,0x00,0x02,0x86,0x01,
		0x00,0x12,0x61,0x6C,0x70,0x68,0x61,0x00,0x02,0x03,0x00,0x00,
		0x02,0x86,0x02,0x00,0x13,0x00,0x00,0x00,0x00;
	.var = .LN0;
	.var = .LN._tremolo.end;
	.byte =
		0x13,0x00,0x00,0x00,0x00;
	.var = .LN0;
	.var = .LN6;
	.byte =
		0x14,0x69,0x00,0x01,0xDE,0x01,0x00,0x00,0x02,0x86,0x7E,0x00,
		0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x07,0x00,0x02,0x03,0x00,
		0x00,0x14,0x64,0x65,0x6C,0x61,0x79,0x42,0x75,0x66,0x66,0x65,
		0x72,0x00,0x01,0x03,0x0C,0x00,0x00,0x05,0x03;
	.var = _delayBuffer;
	.byte =
		0x00,0x00,0x00,0x00,0x00,0x08,0x11,0x0C,0x00,0x00,0x02,0x03,
		0x00,0x00,0x09,0x22,0x00,0x21,0x00,0x00,0x00;
.epcdebug.end:

	.section .debug_line;

	.align 1;
	.type .epcline,STT_OBJECT;
.epcline:
	.inc/binary ".\src\Tremolo.sbn", 3112, 645;
	.var = .LN_tremolo;
	.byte =
		0x04,0x01,0x05,0x62,0x24,0x00,0x05,0x02;
	.var = .LN0;
	.byte =
		0x05,0x0D,0x0B,0x00,0x05,0x02;
	.var = .LN1;
	.byte =
		0x05,0x02,0x01,0x00,0x05,0x02;
	.var = .LN2;
	.byte =
		0x05,0x03,0x0A,0x00,0x05,0x02;
	.var = .LN3;
	.byte =
		0x05,0x27,0x01,0x00,0x05,0x02;
	.var = .LN4;
	.byte =
		0x05,0x03,0x01,0x00,0x05,0x02;
	.var = .LN5;
	.byte =
		0x05,0x25,0x03,0x7F,0x01,0x00,0x05,0x02;
	.var = .LN6;
	.byte =
		0x05,0x03,0x0D,0x00,0x05,0x02;
	.var = .LN7;
	.byte =
		0x05,0x10,0x01,0x00,0x05,0x02;
	.var = .LN8;
	.byte =
		0x05,0x01,0x0B,0x00,0x05,0x02;
	.var = .LN._tremolo.end;
	.byte =
		0x00,0x01,0x01;
.epcline.end:

	.section .debug_pubnames;

	.align 1;
.epcpubnames:
	.type .epcpubnames,STT_OBJECT;
	.byte =
		0x2A,0x00,0x00,0x00,0x02,0x00;
	.var = .epcdebug;
	.byte =
		0x13,0x0C,0x00,0x00,0x39,0x0B,0x00,0x00,0x74,0x72,0x65,0x6D,
		0x6F,0x6C,0x6F,0x00,0xE6,0x0B,0x00,0x00,0x64,0x65,0x6C,0x61,
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
	.var = .LN_tremolo;
	.var = .LN._tremolo.end-.LN_tremolo;
	.byte =
		0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00;
.epcaranges.end:

	.section/DM/DOUBLE32 seg_dmda;


	.align 2;
	.var _delayBuffer[34];
	.weak _delayBuffer;
