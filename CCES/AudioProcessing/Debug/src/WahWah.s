	.file "..\src\WahWah.c";
//  Compilation time: Mon Feb  1 19:27:54 2021
//  Compiler options: -c -file-attr ProjectName=AudioProcessing -proc ADSP-21489 -flags-compiler --no_wrap_diagnostics -si-revision 0.2 -g -save-temps -path-output .\src -DCORE0 -D_DEBUG -ID:/CrossCore/Workspace/AudioProcessing/system -structs-do-not-overlap -no-const-strings -multiline -warn-protos -Wremarks -double-size-32 -swc -gnu-style-dependencies -MD -Mo src\WahWah.d -o src\WahWah.doj
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
//  Frame size            = 20 words
//  Scratch registers used: {r0-r2,r4,r8,r12,i4,i12,m4,acc,mcc}
//  Call preserved registers used: {r11,i15}
//  Registers that could be clobbered by function calls: {r0-r2,r4,r8,r12,s0-s15,i4,i12-i13,b4,b12-b13,m4,m12,ustat1-ustat4,acc,mcc,scc,btf,sacc,smcc,sscc,sbtf,stky,stkyy,msf,msb,lcntr,px}
//Inlined in _wahwah:
//  ..\src\WahWah.c:43:25'_fabs
//  ..\src\WahWah.c:42:18'_fabs
//  ..\src\WahWah.c:30:20'_fabs
//-------------------------------------------------------------------
// line "..\src\WahWah.c":23
	modify(i7,-18);
	dm(-19,i6)=r11;
	dm(-18,i6)=i15;
	dm(-15,i6)=r12;
	dm(-16,i6)=r8;
	dm(-17,i6)=r4;
.LN0:
// line 24
	i12=1036831949;
	dm(-14,i6)=i12;
.LN1:
// line 25
	i15=1140457472;
	dm(-13,i6)=i15;
.LN2:
// line 29
	i12=1043972728;
	dm(-9,i6)=i12;
.LN3:
// line 26
	r4=1041360177;
	cjump _sinf (db); dm(i7,m7)=r2; dm(i7,m7)=.LCJ0-1;
.LCJ0:
.LN4:
	f4=f0+f0;
	dm(-12,i6)=r4;
.LN5:
// line 27
	i4=dm(-17,i6);
	r2=dm(i4,m5);
	f2=f2*f4;
	dm(-11,i6)=r2;
.LN6:
// line 28
	r2=dm(i4,m5);
	f2=f2*f4;
	i4=dm(-16,i6);
	dm(i4,m5)=r2;
	dm(-10,i6)=r2;
.LN7:
// line 30
	i4=dm(-16,i6);
	r8=dm(i4,m5);
.LN8:
	dm(-4,i6)=r8;
.LN9:
// line "D:\CrossCore\SHARC\include\math.h":275
	f2=abs f8;
.LN10:
// line "..\src\WahWah.c":30
	dm(-8,i6)=r2;
.LN11:
// line 32
	dm(-7,i6)=m14;

.P34L1:
//-------------------------------------------------------------------
//   Loop at "..\src\WahWah.c" line 32 col 6
//-------------------------------------------------------------------
.LN12:
	r2=dm(-7,i6);
	r1=dm(-15,i6);
	comp(r1,r2);
	if le jump (pc,.P34L3);

.LN13:
// line 33
	r8=dm(-13,i6);
	r12=dm(-9,i6);
	f1=f8+f12;
	r2=1161527296;
	comp(f2,f1);
	if lt jump (pc,.P34L4);

	r2=i15;
	comp(f1,f2);
	r2=m5;
	if lt r2=m6;
	r2=pass r2;
	if eq jump (pc,.P34L5);

.P34L4:
.LN14:
// line 34
	f2=-f12;
	dm(-9,i6)=r2;
.LN15:
// line 35
	jump (pc,.P34L16);

.P34L5:

.P34L16:
.LN16:
// line 36
	r8=dm(-9,i6);
	r12=dm(-13,i6);
	f2=f8+f12;
	dm(-13,i6)=r2;
.LN17:
// line 37
	r4=1078530011;
	f1=f2*f4;
	r0=951990214;
	r2=1177306112;
	f4=f1*f0;
	r12=mant f4;
	f2=f4*f2;
	if not av f2=f2-f1;
	f2=f2*f0;
	if not av f4=f4-f2;
.LN18:
	cjump _sinf (db); dm(i7,m7)=r2; dm(i7,m7)=.LCJ1-1;
.LCJ1:
.LN19:
	f4=f0+f0;
	dm(-12,i6)=r4;
.LN20:
// line 38
	i4=dm(-17,i6);
	m4=dm(-7,i6);
	r8=dm(m4,i4);
	r12=dm(-11,i6);
	f8=f8-f12;
	r2=dm(-14,i6);
	r11=dm(-10,i6);
	f12=f2*f11;
	f2=f8-f12;
	dm(-6,i6)=r2;
.LN21:
// line 39
	f12=f2*f4;
	f2=f11+f12;
	i4=dm(-16,i6);
	dm(m4,i4)=r2;
.LN22:
// line 40
	r4=dm(-12,i6);
	i4=dm(-16,i6);
	m4=dm(-7,i6);
	r2=dm(m4,i4);
	f8=f2*f4;
	r12=dm(-11,i6);
	f2=f8+f12;
	dm(-11,i6)=r2;
.LN23:
// line 41
	r2=dm(m4,i4);
	dm(-10,i6)=r2;
.LN24:
// line 42
	r8=dm(m4,i4);
.LN25:
	dm(-3,i6)=r8;
.LN26:
// line "D:\CrossCore\SHARC\include\math.h":275
	f2=abs f8;
.LN27:
// line "..\src\WahWah.c":42
	r1=dm(-8,i6);
	comp(f1,f2);
	r2=m5;
	if lt r2=m6;
	r2=pass r2;
	if eq jump (pc,.P34L9);

.LN28:
// line 43
	r8=dm(m4,i4);
.LN29:
	dm(-2,i6)=r8;
.LN30:
// line "D:\CrossCore\SHARC\include\math.h":275
	f2=abs f8;
.LN31:
// line "..\src\WahWah.c":43
	dm(-8,i6)=r2;
.LN32:
// line 44
	jump (pc,.P34L10);

.P34L9:

.P34L10:
.LN33:
// line 32
	r2=dm(-7,i6);
	r2=r2+1;
	dm(-7,i6)=r2;
	jump (pc,.P34L1);
//-------------------------------------------------------------------
//   End Loop L1
//-------------------------------------------------------------------

.P34L3:
//-------------------------------------------------------------------
//   Part of top level (no loop)
//-------------------------------------------------------------------
.LN34:
// line 48
	dm(-5,i6)=m13;

.P34L11:
//-------------------------------------------------------------------
//   Loop at "..\src\WahWah.c" line 48 col 6
//-------------------------------------------------------------------
//   This loop executes 1 iteration of the original loop in an estimated 19 
//   cycles (includes 5 stalls but excludes the cost of function calls).
//-------------------------------------------------------------------
//   This loop's resource usage is:
//     dm dag                          used  12 out of   19 ( 63.2%)
//     pm dag                          used  12 out of   19 ( 63.2%)
//     shift immediate                 used  12 out of   19 ( 63.2%)
//     memory access                   used  12 out of   38 ( 31.6%)
//     multifunction alu               used   6 out of   19 ( 31.6%)
//     multifunction float multiply    used   6 out of   19 ( 31.6%)
//     multifunction integer add sub   used   6 out of   19 ( 31.6%)
//     multifunction integer multiply  used   6 out of   19 ( 31.6%)
//     multifunction mult              used   6 out of   19 ( 31.6%)
//-------------------------------------------------------------------
	// -- 2 stalls --
.LN35:
	r2=dm(-5,i6);
	r1=dm(-15,i6);
	comp(r1,r2);
	// -- stall --
	if le jump (pc,.P34L13);

.LN36:
// line 49
	r8=dm(-8,i6);
	i4=dm(-16,i6);
	m4=r2;
	// -- 2 stalls --
	r4=dm(m4,i4);
	call (pc,___lib_fdiv);                  // floating-point division is implemented as a library call. 
	dm(m4,i4)=r0;
.LN37:
// line 48
	r2=dm(-5,i6);
	r2=r2+1;
	dm(-5,i6)=r2;
	jump (pc,.P34L11);
//-------------------------------------------------------------------
//   End Loop L11
//-------------------------------------------------------------------

.P34L13:
//-------------------------------------------------------------------
//   Part of top level (no loop)
//-------------------------------------------------------------------
.LN38:
// line 51
	i15=dm(-18,i6);
	r11=dm(-19,i6);
	i12=dm(m7,i6);
	jump (m14,i12) (db); rframe; nop;
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
	.inc/binary ".\src\WahWah.sbn", 0, 259;
.epcabbrev.end:

	.section .debug_info;

	.align 1;
	.type .epcdebug,STT_OBJECT;
.epcdebug:
	.byte =
		0xA2,0x0C,0x00,0x00,0x02,0x00;
	.var = .epcabbrev;
	.byte =
		0x04,0x01,0x2E,0x2E,0x5C,0x73,0x72,0x63,0x5C,0x57,0x61,0x68,
		0x57,0x61,0x68,0x2E,0x63,0x00,0x0C;
	.var = .epcline;
	.inc/binary ".\src\WahWah.sbn", 259, 2852;
	.var = .LN_wahwah;
	.var = .LN._wahwah.end;
	.byte =
		0x01,0x01,0x00,0x12,0x69,0x6E,0x70,0x75,0x74,0x5F,0x73,0x69,
		0x67,0x6E,0x61,0x6C,0x00,0x73,0x0C,0x00,0x00,0x02,0x86,0x6F,
		0x00,0x12,0x6F,0x75,0x74,0x70,0x75,0x74,0x5F,0x73,0x69,0x67,
		0x6E,0x61,0x6C,0x00,0x73,0x0C,0x00,0x00,0x02,0x86,0x70,0x00,
		0x12,0x6C,0x65,0x6E,0x67,0x74,0x68,0x00,0xDD,0x01,0x00,0x00,
		0x02,0x86,0x71,0x00,0x13,0x00,0x00,0x00,0x00;
	.var = .LN0;
	.var = .LN._wahwah.end;
	.byte =
		0x14,0x51,0x31,0x00,0x01,0x01,0x03,0x00,0x00,0x02,0x86,0x72;
	.var = .LN0-.LN_wahwah;
	.byte =
		0x00,0x14,0x46,0x63,0x00,0x01,0x01,0x03,0x00,0x00,0x02,0x86,
		0x73;
	.var = .LN1-.LN_wahwah;
	.byte =
		0x00,0x14,0x46,0x31,0x00,0x01,0x01,0x03,0x00,0x00,0x02,0x86,
		0x74;
	.var = .LN1-.LN_wahwah;
	.byte =
		0x00,0x14,0x79,0x6C,0x00,0x01,0x01,0x03,0x00,0x00,0x02,0x86,
		0x75;
	.var = .LN4-.LN_wahwah;
	.byte =
		0x00,0x14,0x79,0x62,0x00,0x01,0x01,0x03,0x00,0x00,0x02,0x86,
		0x76;
	.var = .LN5-.LN_wahwah;
	.byte =
		0x00,0x14,0x64,0x65,0x6C,0x74,0x61,0x00,0x01,0x01,0x03,0x00,
		0x00,0x02,0x86,0x77;
	.var = .LN6-.LN_wahwah;
	.byte =
		0x00,0x14,0x6D,0x61,0x78,0x79,0x00,0x01,0x01,0x03,0x00,0x00,
		0x02,0x86,0x78;
	.var = .LN6-.LN_wahwah;
	.byte =
		0x00,0x13,0x53,0x0C,0x00,0x00;
	.var = .LN11;
	.var = .LN34;
	.byte =
		0x14,0x69,0x00,0x01,0xDD,0x01,0x00,0x00,0x02,0x86,0x79,0x00,
		0x00,0x00,0x00,0x00,0x13,0x00,0x00,0x00,0x00;
	.var = .LN13;
	.var = .LN34;
	.byte =
		0x14,0x79,0x68,0x00,0x01,0x01,0x03,0x00,0x00,0x02,0x86,0x7A;
	.var = .LN33-.LN13;
	.byte =
		0x00,0x00,0x00,0x13,0x00,0x00,0x00,0x00;
	.var = .LN34;
	.var = .LN38;
	.byte =
		0x14,0x69,0x00,0x01,0xDD,0x01,0x00,0x00,0x02,0x86,0x7B,0x00,
		0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x07,0x00,0x01,0x03,0x00,
		0x00,0x14,0x64,0x65,0x6C,0x61,0x79,0x42,0x75,0x66,0x66,0x65,
		0x72,0x00,0x01,0x96,0x0C,0x00,0x00,0x05,0x03;
	.var = _delayBuffer;
	.byte =
		0x00,0x00,0x00,0x00,0x00,0x08,0xA4,0x0C,0x00,0x00,0x01,0x03,
		0x00,0x00,0x09,0x22,0x00,0x21,0x00,0x00,0x00;
.epcdebug.end:

	.section .debug_line;

	.align 1;
	.type .epcline,STT_OBJECT;
.epcline:
	.inc/binary ".\src\WahWah.sbn", 3111, 643;
	.var = .LN_wahwah;
	.byte =
		0x04,0x01,0x05,0x44,0x1F,0x00,0x05,0x02;
	.var = .LN0;
	.byte =
		0x05,0x09,0x0A,0x00,0x05,0x02;
	.var = .LN1;
	.byte =
		0x0A,0x00,0x05,0x02;
	.var = .LN2;
	.byte =
		0x0D,0x00,0x05,0x02;
	.var = .LN3;
	.byte =
		0x05,0x1D,0x03,0x7D,0x01,0x00,0x05,0x02;
	.var = .LN4;
	.byte =
		0x05,0x0C,0x01,0x00,0x05,0x02;
	.var = .LN5;
	.byte =
		0x0A,0x00,0x05,0x02;
	.var = .LN6;
	.byte =
		0x0A,0x00,0x05,0x02;
	.var = .LN7;
	.byte =
		0x05,0x0E,0x0B,0x00,0x05,0x02;
	.var = .LN8;
	.byte =
		0x05,0x14,0x01,0x00,0x05,0x02;
	.var = .LN9;
	.byte =
		0x04,0x0A,0x05,0x0C,0xFE,0x00,0x05,0x02;
	.var = .LN10;
	.byte =
		0x04,0x01,0x05,0x0E,0x03,0x8B,0x7E,0x01,0x00,0x05,0x02;
	.var = .LN11;
	.byte =
		0x05,0x11,0x0B,0x00,0x05,0x02;
	.var = .LN12;
	.byte =
		0x05,0x06,0x01,0x00,0x05,0x02;
	.var = .LN13;
	.byte =
		0x05,0x0A,0x0A,0x00,0x05,0x02;
	.var = .LN14;
	.byte =
		0x05,0x0E,0x0A,0x00,0x05,0x02;
	.var = .LN15;
	.byte =
		0x05,0x0A,0x0A,0x00,0x05,0x02;
	.var = .LN16;
	.byte =
		0x0A,0x00,0x05,0x02;
	.var = .LN17;
	.byte =
		0x0A,0x00,0x05,0x02;
	.var = .LN18;
	.byte =
		0x05,0x17,0x01,0x00,0x05,0x02;
	.var = .LN19;
	.byte =
		0x05,0x0A,0x01,0x00,0x05,0x02;
	.var = .LN20;
	.byte =
		0x05,0x13,0x0A,0x00,0x05,0x02;
	.var = .LN21;
	.byte =
		0x05,0x0A,0x0A,0x00,0x05,0x02;
	.var = .LN22;
	.byte =
		0x0A,0x00,0x05,0x02;
	.var = .LN23;
	.byte =
		0x0A,0x00,0x05,0x02;
	.var = .LN24;
	.byte =
		0x0A,0x00,0x05,0x02;
	.var = .LN25;
	.byte =
		0x05,0x12,0x01,0x00,0x05,0x02;
	.var = .LN26;
	.byte =
		0x04,0x0A,0x05,0x0C,0xF2,0x00,0x05,0x02;
	.var = .LN27;
	.byte =
		0x04,0x01,0x05,0x0A,0x03,0x97,0x7E,0x01,0x00,0x05,0x02;
	.var = .LN28;
	.byte =
		0x05,0x0E,0x0A,0x00,0x05,0x02;
	.var = .LN29;
	.byte =
		0x05,0x19,0x01,0x00,0x05,0x02;
	.var = .LN30;
	.byte =
		0x04,0x0A,0x05,0x0C,0xF1,0x00,0x05,0x02;
	.var = .LN31;
	.byte =
		0x04,0x01,0x05,0x0E,0x03,0x98,0x7E,0x01,0x00,0x05,0x02;
	.var = .LN32;
	.byte =
		0x05,0x0A,0x0A,0x00,0x05,0x02;
	.var = .LN33;
	.byte =
		0x05,0x22,0x03,0x74,0x01,0x00,0x05,0x02;
	.var = .LN34;
	.byte =
		0x05,0x11,0x19,0x00,0x05,0x02;
	.var = .LN35;
	.byte =
		0x05,0x06,0x01,0x00,0x05,0x02;
	.var = .LN36;
	.byte =
		0x05,0x0A,0x0A,0x00,0x05,0x02;
	.var = .LN37;
	.byte =
		0x05,0x22,0x03,0x7F,0x01,0x00,0x05,0x02;
	.var = .LN38;
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
		0xA6,0x0C,0x00,0x00,0x38,0x0B,0x00,0x00,0x77,0x61,0x68,0x77,
		0x61,0x68,0x00,0x79,0x0C,0x00,0x00,0x64,0x65,0x6C,0x61,0x79,
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
