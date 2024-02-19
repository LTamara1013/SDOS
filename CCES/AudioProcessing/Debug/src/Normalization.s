	.file "..\src\Normalization.c";
//  Compilation time: Mon Feb  1 23:27:05 2021
//  Compiler options: -c -file-attr ProjectName=AudioProcessing -proc ADSP-21489 -flags-compiler --no_wrap_diagnostics -si-revision 0.2 -O -Ov100 -g -save-temps -path-output .\src -DCORE0 -D_DEBUG -ID:/CrossCore/Workspace/AudioProcessing/system -structs-do-not-overlap -no-const-strings -multiline -warn-protos -Wremarks -double-size-32 -swc -gnu-style-dependencies -MD -Mo src\Normalization.d -o src\Normalization.doj
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
//  Frame size            = 2 words
//  Scratch registers used: {r0-r2,r12,i4,i12,acc,lcntr}
//  No call preserved registers used.
//Inlined in _max_abs_value:
//  ..\src\Normalization.c:23:26'_fabs
//  ..\src\Normalization.c:22:17'_fabs
//-------------------------------------------------------------------
	r2=pass r8, i4=r4;
.LN0:
// line "..\src\Normalization.c":26
	i12=dm(m7,i6);
	r0=m5;
.LN1:
// line 21
	if le jump (pc,.P34L3);

.LN2:
// line 22
	r12=r8-1, r1=dm(i4,m6);
	r2=m5;
	if eq jump (pc,.P34L18);

	lcntr=r12, do (pc,.P34L20_end) until lce;

.P34L20:
//-------------------------------------------------------------------
//   Loop at "..\src\Normalization.c" line 21 col 5
//-------------------------------------------------------------------
//   This loop executes 1 iteration of the original loop in estimated 3 cycles.
//-------------------------------------------------------------------
//   Unknown Trip Count
//   Successfully found modulo schedule with:
//     Initiation Interval (II)                                  = 3
//     Stage Count (SC)                                          = 2
//     MVE Unroll Factor                                         = 1
//     Minimum initiation interval due to recurrences (rec MII)  = 2
//     Minimum initiation interval due to resources (res MII)    = 2.00
//-------------------------------------------------------------------
//   This loop's resource usage is:
//     dm dag                          used   2 out of    3 ( 66.7%)
//     multifunction alu               used   2 out of    3 ( 66.7%)
//     multifunction float multiply    used   2 out of    3 ( 66.7%)
//     multifunction integer add sub   used   2 out of    3 ( 66.7%)
//     multifunction integer multiply  used   2 out of    3 ( 66.7%)
//     multifunction mult              used   2 out of    3 ( 66.7%)
//     memory access                   used   2 out of    6 ( 33.3%)
//     pm dag                          used   1 out of    3 ( 33.3%)
//     shift immediate                 used   1 out of    3 ( 33.3%)
//-------------------------------------------------------------------
.LN3:
// line "D:\CrossCore\SHARC\include\math.h":275
	f0=abs f1;
.LN4:
// line "..\src\Normalization.c":22
	comp(f2,f0), r1=dm(i4,m6);
.P34L20_end:
	if lt r2=r0;
	// end loop .P34L20;
//-------------------------------------------------------------------
//   End Kernel for Loop L20
//-------------------------------------------------------------------

.P34L21:
//-------------------------------------------------------------------
//   Part of top level (no loop)
//-------------------------------------------------------------------
	r0=pass r2;

.P34L18:
.LN5:
// line "D:\CrossCore\SHARC\include\math.h":275
	f2=abs f1;
	jump (m14,i12) (db), comp(f0,f2);
	// -- stall --
	if lt r0=r2;
	rframe;

.P34L3:
.LN6:
// line "..\src\Normalization.c":26
	i12=dm(m7,i6);
	// -- 2 stalls --
	jump (m14,i12) (db);
	rframe;
	nop;
.LN._max_abs_value.end:
._max_abs_value.end:
	.global _max_abs_value;
	.type _max_abs_value,STT_FUNC;

_normalization:
.LN_normalization:
//-------------------------------------------------------------------
//  Procedure statistics:
//  Frame size            = 4 words
//  Scratch registers used: {r0-r2,r4,r8,s0-s2,s4,i4,i12,acc,mcc,scc,sacc,smcc,sscc,lcntr}
//  Call preserved registers used: {r15}
//  Registers that could be clobbered by function calls: {r0-r2,r4,r8,r12,i4,i6-i7,i12,acc,mcc,scc,btf,lcntr}
//-------------------------------------------------------------------
// line "..\src\Normalization.c":36
	modify(i7,-2);
	dm(-2,i6)=r15;
.LN7:
// line 37
	cjump _max_abs_value (db);
	dm(i7,m7)=r2;
	dm(i7,m7)=.LCJ0-1;
.LCJ0:

.LN8:
// line 36
	r8=pass r0, r15=r8;
.LN9:
// line 38
	call (pc,___lib_fdiv) (db);             // floating-point division is implemented as a library call. There is 1 more instruction related to this call. 
.LN10:
// line 36
	i4=r4;
.LN11:
// line 38
	r4=1065353216;

.LN12:
// line 40
	r2=pass r15, r4=r0;
.LN13:
// line 43
	i12=dm(m7,i6);
.LN14:
// line 40
	if le jump (pc,.P35L3);

	r2=r15-1;
	r2=m7;
	if eq jump (pc,.P35L9);

	r2=lshift r15 by r2, s4=r4;
	s2=r2;

	bit set mode1 0x200000;

	nop;                                    // Inserted to fix anomaly enter_simd. 
	r1=r2-1;
	if eq jump (pc,.P35L20);

	r1=lshift r2 by -1;
	lcntr=r1, do (pc,.P35L2_end) until lce;

.P35L2:
//-------------------------------------------------------------------
//   Loop at "..\src\Normalization.c" line 40 col 5
//-------------------------------------------------------------------
//   This loop executes 4 iterations of the original loop in estimated 4 
//   cycles.
//-------------------------------------------------------------------
//   This loop's resource usage is:
//     dm dag                        used   4 out of    4 (100.0%)
//     pm dag                        used   3 out of    4 ( 75.0%)
//     shift immediate               used   3 out of    4 ( 75.0%)
//     memory access                 used   4 out of    8 ( 50.0%)
//     multifunction float multiply  used   2 out of    4 ( 50.0%)
//     multifunction mult            used   2 out of    4 ( 50.0%)
//-------------------------------------------------------------------
//   Loop was vectorized by a factor of 4.
//-------------------------------------------------------------------
//   Vectorization peeled 3 conditional iterations from the back of the loop 
//   because of an unknown trip count, possibly not a multiple of 4.
//   
//   Consider using pragma loop_count to specify the trip count or trip modulo 
//   in order to avoid conditional peeling.
//-------------------------------------------------------------------
.LN15:
// line 41
	r1=dm(i4,m5);
	f0=f1*f4, r1=dm(2,i4);
	f1=f1*f4, dm(i4,2)=r0;
.P35L2_end:
	dm(i4,2)=r1;
.LN16:
// line 40
	// end loop .P35L2;
//-------------------------------------------------------------------
//   End Loop L2
//-------------------------------------------------------------------

.P35L23:
//-------------------------------------------------------------------
//   Part of top level (no loop)
//-------------------------------------------------------------------
	btst r2 by 0;
	if sz jump (pc,.P35L17);

.P35L20:
.LN17:
// line 41
	r2=dm(i4,m5);
	f2=f2*f4;
	dm(i4,2)=r2;

.P35L17:

	bit clr mode1 0x200000;

	nop;                                    // Inserted to fix anomaly exit_simd. 
	btst r15 by 0;
	// -- stall --
	if sz jump (pc,.P35L3);

.P35L9:
	r2=dm(i4,m5);
	f2=f2*f4;
	dm(i4,m5)=r2;

.P35L3:
	// -- stall --
	jump (m14,i12) (db);
	// -- stall --
.LN18:
// line 43
	r15=dm(-2,i6);
	rframe;
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
	.inc/binary ".\src\Normalization.sbn", 0, 269;
.epcabbrev.end:

	.section .debug_info;

	.align 1;
	.type .epcdebug,STT_OBJECT;
.epcdebug:
	.byte =
		0xE4,0x0B,0x00,0x00,0x02,0x00;
	.var = .epcabbrev;
	.byte =
		0x04,0x01,0x2E,0x2E,0x5C,0x73,0x72,0x63,0x5C,0x4E,0x6F,0x72,
		0x6D,0x61,0x6C,0x69,0x7A,0x61,0x74,0x69,0x6F,0x6E,0x2E,0x63,
		0x00,0x0C;
	.var = .epcline;
	.inc/binary ".\src\Normalization.sbn", 269, 2859;
	.var = .LN_max_abs_value;
	.var = .LN._max_abs_value.end;
	.byte =
		0x01,0x08,0x03,0x00,0x00,0x01,0x00,0x12,0x00,0x00,0x00,0x00;
	.var = .LN0;
	.var = .LN._max_abs_value.end;
	.byte =
		0x12,0x00,0x00,0x00,0x00;
	.var = .LN1;
	.var = .LN5;
	.byte =
		0x00,0x00,0x00,0x13,0xBB,0x0B,0x00,0x00,0x6E,0x6F,0x72,0x6D,
		0x61,0x6C,0x69,0x7A,0x61,0x74,0x69,0x6F,0x6E,0x00,0x01;
	.var = .LN_normalization;
	.var = .LN._normalization.end;
	.byte =
		0x01,0x01,0x00,0x12,0x00,0x00,0x00,0x00;
	.var = .LN7;
	.var = .LN._normalization.end;
	.byte =
		0x12,0x00,0x00,0x00,0x00;
	.var = .LN12;
	.var = .LN18;
	.byte =
		0x00,0x00,0x00,0x14,0x64,0x65,0x6C,0x61,0x79,0x42,0x75,0x66,
		0x66,0x65,0x72,0x00,0x01,0xD8,0x0B,0x00,0x00,0x05,0x03;
	.var = _delayBuffer;
	.byte =
		0x00,0x00,0x00,0x00,0x00,0x08,0xE6,0x0B,0x00,0x00,0x08,0x03,
		0x00,0x00,0x09,0x22,0x00,0x21,0x00,0x00,0x00;
.epcdebug.end:

	.section .debug_line;

	.align 1;
	.type .epcline,STT_OBJECT;
.epcline:
	.inc/binary ".\src\Normalization.sbn", 3128, 633;
	.var = .LN_max_abs_value;
	.byte =
		0x04,0x01,0x05,0x2D,0x1B,0x00,0x05,0x02;
	.var = .LN0;
	.byte =
		0x05,0x05,0x10,0x00,0x05,0x02;
	.var = .LN1;
	.byte =
		0x03,0x7B,0x01,0x00,0x05,0x02;
	.var = .LN2;
	.byte =
		0x05,0x09,0x0A,0x00,0x05,0x02;
	.var = .LN3;
	.byte =
		0x04,0x0A,0x05,0x0C,0x03,0xFD,0x01,0x01,0x00,0x05,0x02;
	.var = .LN4;
	.byte =
		0x04,0x01,0x05,0x09,0x03,0x83,0x7E,0x01,0x00,0x05,0x02;
	.var = .LN5;
	.byte =
		0x04,0x0A,0x05,0x0C,0x03,0xFD,0x01,0x01,0x00,0x05,0x02;
	.var = .LN6;
	.byte =
		0x04,0x01,0x05,0x05,0x03,0x87,0x7E,0x01,0x00,0x05,0x02;
	.var = .LN._max_abs_value.end;
	.byte =
		0x00,0x01,0x01,0x00,0x05,0x02;
	.var = .LN_normalization;
	.byte =
		0x04,0x01,0x05,0x3B,0x2C,0x00,0x05,0x02;
	.var = .LN7;
	.byte =
		0x05,0x24,0x0A,0x00,0x05,0x02;
	.var = .LN8;
	.byte =
		0x05,0x3B,0x03,0x7F,0x01,0x00,0x05,0x02;
	.var = .LN9;
	.byte =
		0x05,0x12,0x0B,0x00,0x05,0x02;
	.var = .LN10;
	.byte =
		0x05,0x3B,0x03,0x7E,0x01,0x00,0x05,0x02;
	.var = .LN11;
	.byte =
		0x05,0x12,0x0B,0x00,0x05,0x02;
	.var = .LN12;
	.byte =
		0x05,0x05,0x0B,0x00,0x05,0x02;
	.var = .LN13;
	.byte =
		0x05,0x01,0x0C,0x00,0x05,0x02;
	.var = .LN14;
	.byte =
		0x05,0x05,0x03,0x7D,0x01,0x00,0x05,0x02;
	.var = .LN15;
	.byte =
		0x05,0x09,0x0A,0x00,0x05,0x02;
	.var = .LN16;
	.byte =
		0x05,0x05,0x03,0x7F,0x01,0x00,0x05,0x02;
	.var = .LN17;
	.byte =
		0x05,0x09,0x0A,0x00,0x05,0x02;
	.var = .LN18;
	.byte =
		0x05,0x01,0x0B,0x00,0x05,0x02;
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
		0xE8,0x0B,0x00,0x00,0x3F,0x0B,0x00,0x00,0x6D,0x61,0x78,0x5F,
		0x61,0x62,0x73,0x5F,0x76,0x61,0x6C,0x75,0x65,0x00,0x7F,0x0B,
		0x00,0x00,0x6E,0x6F,0x72,0x6D,0x61,0x6C,0x69,0x7A,0x61,0x74,
		0x69,0x6F,0x6E,0x00,0xBB,0x0B,0x00,0x00,0x64,0x65,0x6C,0x61,
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
