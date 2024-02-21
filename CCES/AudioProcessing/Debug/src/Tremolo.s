	.file "..\src\Tremolo.c";
//  Compilation time: Mon Feb  1 13:37:28 2021
//  Compiler options: -c -file-attr ProjectName=AudioProcessing -proc ADSP-21489 -flags-compiler --no_wrap_diagnostics -si-revision 0.2 -O -Ov100 -g -save-temps -path-output .\src -DCORE0 -D_DEBUG -ID:/CrossCore/Workspace/AudioProcessing/system -structs-do-not-overlap -no-const-strings -multiline -warn-protos -Wremarks -double-size-32 -swc -gnu-style-dependencies -MD -Mo src\Tremolo.d -o src\Tremolo.doj
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
//  Frame size            = 14 words
//  Scratch registers used: {r1-r2,r4,r8,i12,acc,mcc,lcntr}
//  Call preserved registers used: {r5-r7,r9-r11,r13-r15,i3,i5}
//  Registers that could be clobbered by function calls: {r0-r1,r4,r8,r12,s0-s15,i4,i6-i7,i12-i13,b4,b12-b13,m4,m12,ustat1-ustat4,acc,mcc,scc,btf,sacc,smcc,sscc,sbtf,stky,stkyy,msf,msb,lcntr,px}
//-------------------------------------------------------------------
// line "..\src\Tremolo.c":28
	modify(i7,-12);
	r2=i3;
	dm(-3,i6)=r2;
	r2=i5;
	r14=pass r8, dm(-5,i6)=r14;
	dm(-4,i6)=r15;
	r15=pass r12;
	r2=pass r15, dm(-2,i6)=r2;
	dm(-12,i6)=r5;
	dm(-11,i6)=r6;
	dm(-10,i6)=r7;
	dm(-9,i6)=r9;
	dm(-8,i6)=r10;
	dm(-7,i6)=r11;
	dm(-6,i6)=r13;
	i5=r4;
	i3=r14;
.LN0:
// line 30
	if le jump (pc,.P34L3) (db);
.LN1:
// line 28
	r2=dm(m6,i6);
	r5=dm(2,i6);

.LN2:
// line 31
	f2=float r2, r13=m5;
	r1=1086918619;
	r6=951990214;
	r7=1177306112;
	r9=1065353216;
	f10=f2*f1;
	lcntr=r15, do (pc,.P34L2_end) until lce;

.P34L2:
//-------------------------------------------------------------------
//   Loop at "..\src\Tremolo.c" line 30 col 2
//-------------------------------------------------------------------
//   This loop executes 1 iteration of the original loop in an estimated 16 
//   cycles (excludes the cost of function calls).
//-------------------------------------------------------------------
//   This loop's resource usage is:
//     multifunction float multiply    used  13 out of   16 ( 81.3%)
//     multifunction mult              used  13 out of   16 ( 81.3%)
//     multifunction alu               used  11 out of   16 ( 68.8%)
//     multifunction integer add sub   used  11 out of   16 ( 68.8%)
//     multifunction integer multiply  used  11 out of   16 ( 68.8%)
//     dm dag                          used   5 out of   16 ( 31.3%)
//     memory access                   used   5 out of   32 ( 15.6%)
//     pm dag                          used   2 out of   16 ( 12.5%)
//     shift immediate                 used   2 out of   16 ( 12.5%)
//-------------------------------------------------------------------
//  This loop was not modulo scheduled because it contains calls or volatile 
//  operations.
//-------------------------------------------------------------------
	f2=float r13, r11=dm(i5,m6);
	f1=f10*f2;
	f4=f1*f6;
	r2=mant f4;
	f2=f4*f7;
	if not av f2=f2-f1;
	f2=f2*f6;
	if not av f4=f4-f2;
.LN3:
	cjump _sinf (db);
	dm(i7,m7)=r2;
	dm(i7,m7)=.LCJ0-1;
.LCJ0:

.LN4:
	f2=f5*f0;
	f2=f2+f9;
	f2=f11*f2;
	dm(i3,m6)=r2;
.LN5:
// line 30
.P34L2_end:
	r13=r13+1;
.LN6:
	// end loop .P34L2;
//-------------------------------------------------------------------
//   End Loop L2
//-------------------------------------------------------------------

.P34L3:
//-------------------------------------------------------------------
//   Part of top level (no loop)
//-------------------------------------------------------------------
.LN7:
// line 34
	r4=pass r14, r8=r15;
	cjump _normalization (db);
	dm(i7,m7)=r2;
	dm(i7,m7)=.LCJ1-1;
.LCJ1:

.LN8:
// line 36
	i12=dm(m7,i6);
	i3=dm(-3,i6);
	i5=dm(-2,i6);
	r5=dm(-12,i6);
	r6=dm(-11,i6);
	r7=dm(-10,i6);
	r9=dm(-9,i6);
	r10=dm(-8,i6);
	r11=dm(-7,i6);
	r13=dm(-6,i6);
	r14=dm(-5,i6);
	jump (m14,i12) (db);
	r15=dm(-4,i6);
	rframe;
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
		0xB5,0x0B,0x00,0x00,0x02,0x00;
	.var = .epcabbrev;
	.byte =
		0x04,0x01,0x2E,0x2E,0x5C,0x73,0x72,0x63,0x5C,0x54,0x72,0x65,
		0x6D,0x6F,0x6C,0x6F,0x2E,0x63,0x00,0x0C;
	.var = .epcline;
	.inc/binary ".\src\Tremolo.sbn", 259, 2853;
	.var = .LN_tremolo;
	.var = .LN._tremolo.end;
	.byte =
		0x01,0x01,0x00,0x12,0x46,0x6C,0x66,0x6F,0x00,0xDE,0x01,0x00,
		0x00,0x02,0x86,0x01,0x00,0x12,0x61,0x6C,0x70,0x68,0x61,0x00,
		0x02,0x03,0x00,0x00,0x02,0x86,0x02,0x00,0x13,0x00,0x00,0x00,
		0x00;
	.var = .LN0;
	.var = .LN._tremolo.end;
	.byte =
		0x13,0x00,0x00,0x00,0x00;
	.var = .LN0;
	.var = .LN7;
	.byte =
		0x00,0x00,0x00,0x14,0x64,0x65,0x6C,0x61,0x79,0x42,0x75,0x66,
		0x66,0x65,0x72,0x00,0x01,0xA9,0x0B,0x00,0x00,0x05,0x03;
	.var = _delayBuffer;
	.byte =
		0x00,0x00,0x00,0x00,0x00,0x08,0xB7,0x0B,0x00,0x00,0x02,0x03,
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
		0x05,0x02,0x0B,0x00,0x05,0x02;
	.var = .LN1;
	.byte =
		0x05,0x62,0x03,0x7E,0x01,0x00,0x05,0x02;
	.var = .LN2;
	.byte =
		0x05,0x03,0x0C,0x00,0x05,0x02;
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
		0x05,0x02,0x01,0x00,0x05,0x02;
	.var = .LN7;
	.byte =
		0x05,0x10,0x0D,0x00,0x05,0x02;
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
		0xB9,0x0B,0x00,0x00,0x39,0x0B,0x00,0x00,0x74,0x72,0x65,0x6D,
		0x6F,0x6C,0x6F,0x00,0x8C,0x0B,0x00,0x00,0x64,0x65,0x6C,0x61,
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
