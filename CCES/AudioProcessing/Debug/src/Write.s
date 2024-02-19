	.file "..\src\Write.c";
//  Compilation time: Mon Feb  1 23:27:06 2021
//  Compiler options: -c -file-attr ProjectName=AudioProcessing -proc ADSP-21489 -flags-compiler --no_wrap_diagnostics -si-revision 0.2 -O -Ov100 -g -save-temps -path-output .\src -DCORE0 -D_DEBUG -ID:/CrossCore/Workspace/AudioProcessing/system -structs-do-not-overlap -no-const-strings -multiline -warn-protos -Wremarks -double-size-32 -swc -gnu-style-dependencies -MD -Mo src\Write.d -o src\Write.doj
//  Compiler version: 8.15.1.0 (61a2eff16741378b1ae40f6392a0806696679a50)
//  Architecture: ADSP-21489
//  Silicon revision: 0.2
//  Anomalies summary:
//   Disabled: w_anomaly_45, w_anomaly_2126x_4, w_dag_stall, w_2136x_multi, w_2136x_mem_write, w_09000014, w_09000018, w_09000020, w_07000009_1, w_07000009_2, w_09000021, w_09000022, w_15000011, w_09000023, w_15000016, w_15000023, w_20000002, w_20000022, w_20000020, w_20000024, w_20000023, w_20000009, w_20000069, w_20000083
//   Enabled: w_15000003, w_15000004, w_15000005
//   Always on: w_simd, w_restore_loop_stack

	.section/SW/DOUBLE32 seg_swco;

.epctext:

_write:
.LN_write:
//-------------------------------------------------------------------
//  Procedure statistics:
//  Frame size            = 8 words
//  Scratch registers used: {r2,r4,r8,r12,i12,acc,scc}
//  Call preserved registers used: {r11,r13-r15}
//  Registers that could be clobbered by function calls: {r0-r1,r4,r8,r12,s0-s15,i4,i6-i7,i12-i13,b4,b12-b13,m4,m12,ustat1-ustat4,acc,mcc,scc,btf,sacc,smcc,sscc,sbtf,stky,stkyy,msf,msb,lcntr,px}
//-------------------------------------------------------------------
// line "..\src\Write.c":15
	modify(i7,-4);
	dm(-3,i6)=r14;
	r14=pass r8;
	dm(-5,i6)=r11;
	r13=pass r12, dm(-4,i6)=r13;
	dm(-2,i6)=r15;
.LN0:
// line 17
	r8=.swb.30;
	cjump _fopen (db);
	dm(i7,m7)=r2;
	dm(i7,m7)=.LCJ0-1;
.LCJ0:

	r15=pass r0;
	r2=leftz r15;
.LN1:
// line 18
	if sv jump (pc,.P37L4) (db);
	r11=.sErroro.31;
.LN2:
// line 22
	r2=pass r13;

	r11=.sDatawr.32;
	if le jump (pc,.P37L8);

.P37L7:
//-------------------------------------------------------------------
//   Loop at "..\src\Write.c" line 22 col 2
//-------------------------------------------------------------------
//   This loop executes 1 iteration of the original loop in an estimated 12 
//   cycles (includes 1 stall but excludes the cost of function calls).
//-------------------------------------------------------------------
//   This loop's resource usage is:
//     dm dag                          used  10 out of   12 ( 83.3%)
//     pm dag                          used   8 out of   12 ( 66.7%)
//     shift immediate                 used   8 out of   12 ( 66.7%)
//     multifunction alu               used   7 out of   12 ( 58.3%)
//     multifunction float multiply    used   7 out of   12 ( 58.3%)
//     multifunction integer add sub   used   7 out of   12 ( 58.3%)
//     multifunction integer multiply  used   7 out of   12 ( 58.3%)
//     multifunction mult              used   7 out of   12 ( 58.3%)
//     memory access                   used  10 out of   24 ( 41.7%)
//-------------------------------------------------------------------
//  This loop was not modulo scheduled because it contains calls or volatile 
//  operations.
//-------------------------------------------------------------------
.LN3:
// line 24
	r4=pass r14, modify(i7,m7);
	r14=r14+1, dm(i7,m7)=r15;
	r12=m6;
	r8=m6;
	cjump _fwrite (db);
	dm(i7,m7)=r2;
	dm(i7,m7)=.LCJ1-1;
.LCJ1:

	r13=r13-1;
	// -- stall --
	if ne jump (pc,.P37L7) (db);
	modify(i7,2);
	nop;
//-------------------------------------------------------------------
//   End Loop L7
//-------------------------------------------------------------------

.P37L8:
//-------------------------------------------------------------------
//   Part of top level (no loop)
//-------------------------------------------------------------------
.LN4:
// line 26
	cjump _fclose (db);
	// -- stall --
	r4=pass r15, dm(i7,m7)=r2;
	dm(i7,m7)=.LCJ2-1;
.LCJ2:

.P37L4:
.LN5:
// line 19
	modify(i7,m7);
	dm(i7,m7)=r11;
	cjump __printf32 (db);
	dm(i7,m7)=r2;
	dm(i7,m7)=.LCJ3-1;
.LCJ3:

.LN6:
// line 28
	i12=dm(m7,i6);
	r11=dm(-5,i6);
	r13=dm(-4,i6);
	r14=dm(-3,i6);
	jump (m14,i12) (db);
	r15=dm(-2,i6);
	rframe;
.LN._write.end:
._write.end:
	.global _write;
	.type _write,STT_FUNC;

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
	.file_attr FuncName="_write";
	.file_attr Encoding="SW";
	.file_attr Content="CodeData";
.epctext.end:

	.extern _fopen;
	.type _fopen,STT_FUNC;
	.extern _fwrite;
	.type _fwrite,STT_FUNC;
	.extern _fclose;
	.type _fclose,STT_FUNC;
	.extern __printf32;
	.type __printf32,STT_FUNC;

	.section .debug_abbrev;

	.align 1;
	.type .epcabbrev,STT_OBJECT;
.epcabbrev:
	.inc/binary ".\src\Write.sbn", 0, 246;
.epcabbrev.end:

	.section .debug_info;

	.align 1;
	.type .epcdebug,STT_OBJECT;
.epcdebug:
	.byte =
		0x94,0x0B,0x00,0x00,0x02,0x00;
	.var = .epcabbrev;
	.byte =
		0x04,0x01,0x2E,0x2E,0x5C,0x73,0x72,0x63,0x5C,0x57,0x72,0x69,
		0x74,0x65,0x2E,0x63,0x00,0x0C;
	.var = .epcline;
	.inc/binary ".\src\Write.sbn", 246, 2851;
	.var = .LN_write;
	.var = .LN._write.end;
	.byte =
		0x01,0x01,0x00,0x12,0x00,0x00,0x00,0x00;
	.var = .LN0;
	.var = .LN._write.end;
	.byte =
		0x12,0x00,0x00,0x00,0x00;
	.var = .LN2;
	.var = .LN4;
	.byte =
		0x00,0x00,0x00,0x13,0x64,0x65,0x6C,0x61,0x79,0x42,0x75,0x66,
		0x66,0x65,0x72,0x00,0x01,0x88,0x0B,0x00,0x00,0x05,0x03;
	.var = _delayBuffer;
	.byte =
		0x00,0x00,0x00,0x00,0x00,0x08,0x96,0x0B,0x00,0x00,0x00,0x03,
		0x00,0x00,0x09,0x22,0x00,0x21,0x00,0x00,0x00;
.epcdebug.end:

	.section .debug_line;

	.align 1;
	.type .epcline,STT_OBJECT;
.epcline:
	.inc/binary ".\src\Write.sbn", 3097, 617;
	.var = .LN_write;
	.byte =
		0x04,0x01,0x05,0x40,0x17,0x00,0x05,0x02;
	.var = .LN0;
	.byte =
		0x05,0x0C,0x0B,0x00,0x05,0x02;
	.var = .LN1;
	.byte =
		0x05,0x02,0x0A,0x00,0x05,0x02;
	.var = .LN2;
	.byte =
		0x0D,0x00,0x05,0x02;
	.var = .LN3;
	.byte =
		0x05,0x09,0x0B,0x00,0x05,0x02;
	.var = .LN4;
	.byte =
		0x05,0x08,0x0B,0x00,0x05,0x02;
	.var = .LN5;
	.byte =
		0x05,0x09,0x03,0x79,0x01,0x00,0x05,0x02;
	.var = .LN6;
	.byte =
		0x05,0x01,0x12,0x00,0x05,0x02;
	.var = .LN._write.end;
	.byte =
		0x00,0x01,0x01;
.epcline.end:

	.section .debug_pubnames;

	.align 1;
.epcpubnames:
	.type .epcpubnames,STT_OBJECT;
	.byte =
		0x28,0x00,0x00,0x00,0x02,0x00;
	.var = .epcdebug;
	.byte =
		0x98,0x0B,0x00,0x00,0x37,0x0B,0x00,0x00,0x77,0x72,0x69,0x74,
		0x65,0x00,0x6B,0x0B,0x00,0x00,0x64,0x65,0x6C,0x61,0x79,0x42,
		0x75,0x66,0x66,0x65,0x72,0x00,0x00,0x00,0x00,0x00;
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
	.var = .LN_write;
	.var = .LN._write.end-.LN_write;
	.byte =
		0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00;
.epcaranges.end:

	.section/DM/DOUBLE32 seg_dmda;

	.align 2;
	.type .swb.30,STT_OBJECT;
	.var .swb.30[] =
		 0x00000077, 0x00000062, 0x00000000;
	.align 2;
	.type .sErroro.31,STT_OBJECT;
	.var .sErroro.31[] =
		 0x00000045, 0x00000072, 0x00000072, 0x0000006F,
		 0x00000072, 0x00000020, 0x0000006F, 0x00000070,
		 0x00000065, 0x0000006E, 0x00000069, 0x0000006E,
		 0x00000067, 0x00000020, 0x00000066, 0x00000069,
		 0x0000006C, 0x00000065, 0x0000002E, 0x0000000A,
		 0x00000000;
	.align 2;
	.type .sDatawr.32,STT_OBJECT;
	.var .sDatawr.32[] =
		 0x00000044, 0x00000061, 0x00000074, 0x00000061,
		 0x00000020, 0x00000077, 0x00000072, 0x00000069,
		 0x00000074, 0x00000074, 0x00000065, 0x0000006E,
		 0x00000020, 0x00000073, 0x00000075, 0x00000063,
		 0x00000063, 0x00000065, 0x00000073, 0x00000073,
		 0x00000066, 0x00000075, 0x0000006C, 0x0000006C,
		 0x00000079, 0x0000002E, 0x00000000;

	.align 2;
	.var _delayBuffer[34];
	.weak _delayBuffer;
