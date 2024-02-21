	.file "..\src\WahWah.c";
//  Compilation time: Mon Feb  1 13:37:29 2021
//  Compiler options: -c -file-attr ProjectName=AudioProcessing -proc ADSP-21489 -flags-compiler --no_wrap_diagnostics -si-revision 0.2 -O -Ov100 -g -save-temps -path-output .\src -DCORE0 -D_DEBUG -ID:/CrossCore/Workspace/AudioProcessing/system -structs-do-not-overlap -no-const-strings -multiline -warn-protos -Wremarks -double-size-32 -swc -gnu-style-dependencies -MD -Mo src\WahWah.d -o src\WahWah.doj
//  Compiler version: 8.15.1.0 (61a2eff16741378b1ae40f6392a0806696679a50)
//  Architecture: ADSP-21489
//  Silicon revision: 0.2
//  Anomalies summary:
//   Disabled: w_anomaly_45, w_anomaly_2126x_4, w_dag_stall, w_2136x_multi, w_2136x_mem_write, w_09000014, w_09000018, w_09000020, w_07000009_1, w_07000009_2, w_09000021, w_09000022, w_15000011, w_09000023, w_15000016, w_15000023, w_20000002, w_20000022, w_20000020, w_20000024, w_20000023, w_20000009, w_20000069, w_20000083
//   Enabled: w_15000003, w_15000004, w_15000005
//   Always on: w_simd, w_restore_loop_stack

	.section/SW/DOUBLE32 seg_swco;

.epctext:

_wahwah:
.LN_wahwah:
//-------------------------------------------------------------------
//  Procedure statistics:
//  Frame size            = 16 words
//  Scratch registers used: {r0-r2,r4,r8,r12,i12,acc,mcc,lcntr}
//  Call preserved registers used: {r3,r5-r7,r9-r11,r13-r15,i2-i3,i5}
//  Registers that could be clobbered by function calls: {r0-r2,r4,r8,r12,s0-s15,i4,i6-i7,i12-i13,b4,b12-b13,m4,m12,ustat1-ustat4,acc,mcc,scc,btf,sacc,smcc,sscc,sbtf,stky,stkyy,msf,msb,lcntr,px}
//Inlined in _wahwah:
//  ..\src\WahWah.c:43:25'_fabs
//  ..\src\WahWah.c:42:18'_fabs
//  ..\src\WahWah.c:30:20'_fabs
//-------------------------------------------------------------------
// line "..\src\WahWah.c":23
	modify(i7,-14);
	r2=i2;
	dm(-5,i6)=r2;
	r2=i3;
	dm(-4,i6)=r2;
	r2=i5;
	i5=r4;
	r2=pass r12, dm(-3,i6)=r2;
	dm(-10,i6)=r10;
	dm(-7,i6)=r14;
	dm(-6,i6)=r15;
	dm(-15,i6)=r3;
	dm(-14,i6)=r5;
	dm(-13,i6)=r6;
	dm(-12,i6)=r7;
	dm(-11,i6)=r9;
	dm(-9,i6)=r11;
	dm(-8,i6)=r13;
.LN0:
// line 26
	r4=1041360177;
	i3=r8;
.LN1:
// line 23
	dm(-2,i6)=r2;
.LN2:
// line 26
	cjump _sinf (db);
	dm(i7,m7)=r2;
	dm(i7,m7)=.LCJ0-1;
.LCJ0:

.LN3:
	f0=f0+f0, r1=dm(i5,m6);
.LN4:
// line 27
	f14=f0*f1, r2=dm(-2,i6);
.LN5:
// line 32
	r2=r2-1, r15=r14;
	r11=1043972728;
	if le jump (pc,.P34L3) (db);
.LN6:
// line "D:\CrossCore\SHARC\include\math.h":275
	f10=abs f14, dm(i3,m5)=r14;
	i2=modify(i3,m6);

.LN7:
// line "..\src\WahWah.c":33
	r6=1161527296;
.LN8:
// line 37
	r7=1078530011;
	r9=951990214;
	r13=1140457472;
	r5=1177306112;
	lcntr=r2, do (pc,.P34L2_end) until lce;

.P34L2:
//-------------------------------------------------------------------
//   Loop at "..\src\WahWah.c" line 32 col 6
//-------------------------------------------------------------------
.LN9:
// line 33
	f2=f11+f13;
	comp(f6,f2);
.LN10:
	r1=1140457472;
.LN11:
	if lt jump (pc,.P34L4);

	comp(f2,f1);
	// -- stall --
	if ge jump (pc,.P34L16);

.P34L4:
.LN12:
// line 34
	f11=-f11;

.P34L16:
.LN13:
// line 36
	f13=f11+f13, r3=dm(i5,m6);
.LN14:
// line 37
	f1=f13*f7;
	f4=f1*f9;
	r0=mant f4;
	f2=f4*f5;
	if not av f2=f2-f1;
	f2=f2*f9;
	if not av f4=f4-f2;
.LN15:
	cjump _sinf (db);
	dm(i7,m7)=r2;
	dm(i7,m7)=.LCJ1-1;
.LCJ1:

.LN16:
// line 38
	r8=1036831949;
.LN17:
	f12=f3-f15;
	f8=f14*f8;
.LN18:
// line 37
	f2=f0+f0;
.LN19:
// line 38
	f1=f12-f8;
.LN20:
// line 39
	f1=f2*f1;
	f14=f14+f1;
.LN21:
// line 40
	f2=f2*f14, dm(i2,m6)=r14;
.LN22:
// line "D:\CrossCore\SHARC\include\math.h":275
	f1=abs f14;
.LN23:
// line "..\src\WahWah.c":40
	f15=f2+f15;
.LN24:
// line 42
	comp(f10,f1);
.P34L2_end:
	if lt r10=r1;
.LN25:
// line 32
	// end loop .P34L2;
//-------------------------------------------------------------------
//   End Loop L2
//-------------------------------------------------------------------

.P34L3:
//-------------------------------------------------------------------
//   Part of top level (no loop)
//-------------------------------------------------------------------
.LN26:
// line 48
	r2=dm(-2,i6);
	r2=pass r2;
	// -- stall --
	if le jump (pc,.P34L13);

	lcntr=r2, do (pc,.P34L12_end) until lce;

.P34L12:
//-------------------------------------------------------------------
//   Loop at "..\src\WahWah.c" line 48 col 6
//-------------------------------------------------------------------
//   This loop executes 1 iteration of the original loop in an estimated 4 
//   cycles (excludes the cost of function calls).
//-------------------------------------------------------------------
//   This loop's resource usage is:
//     dm dag                          used   4 out of    4 (100.0%)
//     multifunction alu               used   3 out of    4 ( 75.0%)
//     multifunction float multiply    used   3 out of    4 ( 75.0%)
//     multifunction integer add sub   used   3 out of    4 ( 75.0%)
//     multifunction integer multiply  used   3 out of    4 ( 75.0%)
//     multifunction mult              used   3 out of    4 ( 75.0%)
//     memory access                   used   4 out of    8 ( 50.0%)
//     pm dag                          used   2 out of    4 ( 50.0%)
//     shift immediate                 used   2 out of    4 ( 50.0%)
//-------------------------------------------------------------------
//  This loop was not modulo scheduled because it contains calls or volatile 
//  operations.
//-------------------------------------------------------------------
.LN27:
// line 49
	call (pc,___lib_fdiv) (db);             // floating-point division is implemented as a library call. 
	r8=pass r10, r4=dm(i3,m5);
	nop;

.P34L12_end:
	dm(i3,m6)=r0;
.LN28:
// line 48
	// end loop .P34L12;
//-------------------------------------------------------------------
//   End Loop L12
//-------------------------------------------------------------------

.P34L13:
//-------------------------------------------------------------------
//   Part of top level (no loop)
//-------------------------------------------------------------------
.LN29:
// line 51
	i12=dm(m7,i6);
	i2=dm(-5,i6);
	i3=dm(-4,i6);
	i5=dm(-3,i6);
	r3=dm(-15,i6);
	r5=dm(-14,i6);
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
.LN._wahwah.end:
._wahwah.end:
	.global _wahwah;
	.type _wahwah,STT_FUNC;

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
	.file_attr FuncName="_wahwah";
	.file_attr Encoding="SW";
	.file_attr Content="CodeData";
.epctext.end:

	.extern _sinf;
	.type _sinf,STT_FUNC;
	.extern ___lib_fdiv;
	.type ___lib_fdiv,STT_FUNC;

	.section .debug_abbrev;

	.align 1;
	.type .epcabbrev,STT_OBJECT;
.epcabbrev:
	.inc/binary ".\src\WahWah.sbn", 0, 246;
.epcabbrev.end:

	.section .debug_info;

	.align 1;
	.type .epcdebug,STT_OBJECT;
.epcdebug:
	.byte =
		0xB2,0x0B,0x00,0x00,0x02,0x00;
	.var = .epcabbrev;
	.byte =
		0x04,0x01,0x2E,0x2E,0x5C,0x73,0x72,0x63,0x5C,0x57,0x61,0x68,
		0x57,0x61,0x68,0x2E,0x63,0x00,0x0C;
	.var = .epcline;
	.inc/binary ".\src\WahWah.sbn", 246, 2852;
	.var = .LN_wahwah;
	.var = .LN._wahwah.end;
	.byte =
		0x01,0x01,0x00,0x12,0x00,0x00,0x00,0x00;
	.var = .LN0;
	.var = .LN._wahwah.end;
	.byte =
		0x12,0x79,0x0B,0x00,0x00;
	.var = .LN5;
	.var = .LN26;
	.byte =
		0x12,0x00,0x00,0x00,0x00;
	.var = .LN7;
	.var = .LN26;
	.byte =
		0x00,0x00,0x12,0x00,0x00,0x00,0x00;
	.var = .LN26;
	.var = .LN29;
	.byte =
		0x00,0x00,0x00,0x13,0x64,0x65,0x6C,0x61,0x79,0x42,0x75,0x66,
		0x66,0x65,0x72,0x00,0x01,0xA6,0x0B,0x00,0x00,0x05,0x03;
	.var = _delayBuffer;
	.byte =
		0x00,0x00,0x00,0x00,0x00,0x08,0xB4,0x0B,0x00,0x00,0x01,0x03,
		0x00,0x00,0x09,0x22,0x00,0x21,0x00,0x00,0x00;
.epcdebug.end:

	.section .debug_line;

	.align 1;
	.type .epcline,STT_OBJECT;
.epcline:
	.inc/binary ".\src\WahWah.sbn", 3098, 643;
	.var = .LN_wahwah;
	.byte =
		0x04,0x01,0x05,0x44,0x1F,0x00,0x05,0x02;
	.var = .LN0;
	.byte =
		0x05,0x1D,0x0C,0x00,0x05,0x02;
	.var = .LN1;
	.byte =
		0x05,0x44,0x03,0x7D,0x01,0x00,0x05,0x02;
	.var = .LN2;
	.byte =
		0x05,0x1D,0x0C,0x00,0x05,0x02;
	.var = .LN3;
	.byte =
		0x05,0x0C,0x01,0x00,0x05,0x02;
	.var = .LN4;
	.byte =
		0x0A,0x00,0x05,0x02;
	.var = .LN5;
	.byte =
		0x05,0x06,0x0E,0x00,0x05,0x02;
	.var = .LN6;
	.byte =
		0x04,0x0A,0x05,0x0C,0xFC,0x00,0x05,0x02;
	.var = .LN7;
	.byte =
		0x04,0x01,0x05,0x0A,0x03,0x8E,0x7E,0x01,0x00,0x05,0x02;
	.var = .LN8;
	.byte =
		0x0D,0x00,0x05,0x02;
	.var = .LN9;
	.byte =
		0x03,0x7C,0x01,0x00,0x05,0x02;
	.var = .LN10;
	.byte =
		0x01,0x00,0x05,0x02;
	.var = .LN11;
	.byte =
		0x01,0x00,0x05,0x02;
	.var = .LN12;
	.byte =
		0x05,0x0E,0x0A,0x00,0x05,0x02;
	.var = .LN13;
	.byte =
		0x05,0x0A,0x0B,0x00,0x05,0x02;
	.var = .LN14;
	.byte =
		0x0A,0x00,0x05,0x02;
	.var = .LN15;
	.byte =
		0x05,0x17,0x01,0x00,0x05,0x02;
	.var = .LN16;
	.byte =
		0x05,0x13,0x0A,0x00,0x05,0x02;
	.var = .LN17;
	.byte =
		0x01,0x00,0x05,0x02;
	.var = .LN18;
	.byte =
		0x05,0x0A,0x03,0x7F,0x01,0x00,0x05,0x02;
	.var = .LN19;
	.byte =
		0x05,0x13,0x0A,0x00,0x05,0x02;
	.var = .LN20;
	.byte =
		0x05,0x0A,0x0A,0x00,0x05,0x02;
	.var = .LN21;
	.byte =
		0x0A,0x00,0x05,0x02;
	.var = .LN22;
	.byte =
		0x04,0x0A,0x05,0x0C,0xF4,0x00,0x05,0x02;
	.var = .LN23;
	.byte =
		0x04,0x01,0x05,0x0A,0x03,0x95,0x7E,0x01,0x00,0x05,0x02;
	.var = .LN24;
	.byte =
		0x0B,0x00,0x05,0x02;
	.var = .LN25;
	.byte =
		0x05,0x06,0x03,0x76,0x01,0x00,0x05,0x02;
	.var = .LN26;
	.byte =
		0x19,0x00,0x05,0x02;
	.var = .LN27;
	.byte =
		0x05,0x0A,0x0A,0x00,0x05,0x02;
	.var = .LN28;
	.byte =
		0x05,0x06,0x03,0x7F,0x01,0x00,0x05,0x02;
	.var = .LN29;
	.byte =
		0x05,0x01,0x0C,0x00,0x05,0x02;
	.var = .LN._wahwah.end;
	.byte =
		0x00,0x01,0x01;
.epcline.end:

	.section .debug_pubnames;

	.align 1;
.epcpubnames:
	.type .epcpubnames,STT_OBJECT;
	.byte =
		0x29,0x00,0x00,0x00,0x02,0x00;
	.var = .epcdebug;
	.byte =
		0xB6,0x0B,0x00,0x00,0x38,0x0B,0x00,0x00,0x77,0x61,0x68,0x77,
		0x61,0x68,0x00,0x89,0x0B,0x00,0x00,0x64,0x65,0x6C,0x61,0x79,
		0x42,0x75,0x66,0x66,0x65,0x72,0x00,0x00,0x00,0x00,0x00;
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
	.var = .LN_wahwah;
	.var = .LN._wahwah.end-.LN_wahwah;
	.byte =
		0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00;
.epcaranges.end:

	.section/DM/DOUBLE32 seg_dmda;


	.align 2;
	.var _delayBuffer[34];
	.weak _delayBuffer;
