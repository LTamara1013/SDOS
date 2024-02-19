	.file "..\src\Delay.c";
//  Compilation time: Mon Feb  1 01:23:16 2021
//  Compiler options: -c -file-attr ProjectName=AudioProcessing -proc ADSP-21489 -flags-compiler --no_wrap_diagnostics -si-revision 0.2 -O -Ov100 -g -save-temps -path-output .\src -DCORE0 -D_DEBUG -ID:/CrossCore/Workspace/AudioProcessing/system -structs-do-not-overlap -no-const-strings -multiline -warn-protos -Wremarks -double-size-32 -swc -gnu-style-dependencies -MD -Mo src\Delay.d -o src\Delay.doj
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
//  Frame size            = 10 words
//  Scratch registers used: {r0-r2,r4,r8,r12,s4,s8,s15,i4,i12,b4,acc,mcc,scc,sacc,lcntr}
//  Call preserved registers used: {r11,r13-r15,i2-i3,i5,l4}
//  Registers that could be clobbered by function calls: {r0-r2,r4,r8,r12,s0-s2,s4,s12,acc,mcc,scc,btf,sacc,smcc,sscc,sbtf}
//Inlined in _delay_with_feedback:
//  ..\src\Delay.c:271:29'_fabs
//  ..\src\Delay.c:270:17'_fabs
//-------------------------------------------------------------------
// line "..\src\Delay.c":255
	modify(i7,-8);
	r2=i2;
	dm(-4,i6)=r2;
	r2=i3;
	dm(-3,i6)=r2;
	r2=i5;
	r13=r13-r13, dm(-7,i6)=r13;
	dm(-6,i6)=r14;
	r14=pass r12;
	r2=pass r14, dm(-2,i6)=r2;
	dm(-5,i6)=r15;
	dm(-8,i6)=r11;
	i2=r4;
	i3=r8;
	r15=m5;
.LN0:
// line 258
	if le jump (pc,.P34L3) (db);
.LN1:
// line 255
	r1=r1-r1, r0=dm(m6,i6);
	r2=dm(2,i6);

	b4=_delayBuffer;
	l4=2205;
	i5=i3;
.LN2:
// line 263
	r11=2205;
	lcntr=r14, do (pc,.P34L2_end) until lce;

.P34L2:
//-------------------------------------------------------------------
//   Loop at "..\src\Delay.c" line 258 col 5
//-------------------------------------------------------------------
//  This loop was not modulo scheduled because it contains jump instructions.
//-------------------------------------------------------------------
	comp(r1,r11), r8=dm(i2,m6);
	if lt jump (pc,.P34L16) (db);
.LN3:
// line 261
	r4=dm(i4,m5);
	if lt dm(m5,i5)=r8;

.LN4:
// line 264
	f12=f0*f4;
.LN5:
// line 265
	f12=f2*f4, f4=f8+f12;
	f8=f8+f12, dm(i4,m5)=r4;
	dm(i5,m5)=r8;

.P34L16:
.LN6:
// line 270
	r12=dm(i5,m6);
.LN7:
// line "D:\CrossCore\SHARC\include\math.h":275
	f12=abs f12, modify(i4,m6);
.LN8:
// line "..\src\Delay.c":270
	comp(f15,f12);
	if lt r15=r12;
.LN9:
// line 258
.P34L2_end:
	r1=r1+1;
.LN10:
	// end loop .P34L2;
//-------------------------------------------------------------------
//   End Loop L2
//-------------------------------------------------------------------

.P34L26:
//-------------------------------------------------------------------
//   Part of top level (no loop)
//-------------------------------------------------------------------
	l4=0;

.P34L3:
.LN11:
// line 276
	comp(f13,f15), i12=dm(m7,i6);
	// -- stall --
	if ge jump (pc,.P34L12);

.LN12:
// line 278
	r2=pass r14;
	// -- stall --
	if le jump (pc,.P34L12);

	r2=r14-1;
	r2=m7;
	if eq jump (pc,.P34L32);

	r2=lshift r14 by r2, s15=r15;

	bit set mode1 0x200000;

	nop;                                    // Inserted to fix anomaly enter_simd. 
	lcntr=r2, do (pc,.P34L14_end) until lce;

.P34L14:
//-------------------------------------------------------------------
//   Loop at "..\src\Delay.c" line 278 col 9
//-------------------------------------------------------------------
//   This loop executes 2 iterations of the original loop in an estimated 4 
//   cycles (excludes the cost of function calls).
//-------------------------------------------------------------------
//   This loop's resource usage is:
//     dm dag                          used   4 out of    4 (100.0%)
//     multifunction alu               used   3 out of    4 ( 75.0%)
//     multifunction float multiply    used   3 out of    4 ( 75.0%)
//     multifunction integer add sub   used   3 out of    4 ( 75.0%)
//     multifunction integer multiply  used   3 out of    4 ( 75.0%)
//     multifunction mult              used   3 out of    4 ( 75.0%)
//     pm dag                          used   3 out of    4 ( 75.0%)
//     shift immediate                 used   3 out of    4 ( 75.0%)
//     memory access                   used   4 out of    8 ( 50.0%)
//-------------------------------------------------------------------
//   Loop was vectorized by a factor of 2.
//-------------------------------------------------------------------
//   Vectorization peeled 1 conditional iteration from the back of the loop 
//   because of an unknown trip count, possibly not a multiple of 2.
//   
//   Consider using pragma loop_count to specify the trip count or trip modulo 
//   in order to avoid conditional peeling.
//  This loop was not modulo scheduled because it contains calls or volatile 
//  operations.
//-------------------------------------------------------------------
.LN13:
// line 279
	call (pc,___lib_fdiv_simd) (db);        // floating-point division is implemented as a library call. 
	r8=pass r15, r4=dm(i3,m5);
	nop;

.P34L14_end:
	dm(i3,2)=r0;
.LN14:
// line 278
	// end loop .P34L14;
//-------------------------------------------------------------------
//   End Loop L14
//-------------------------------------------------------------------

.P34L40:
//-------------------------------------------------------------------
//   Part of top level (no loop)
//-------------------------------------------------------------------

	bit clr mode1 0x200000;

	nop;                                    // Inserted to fix anomaly exit_simd. 
	btst r14 by r13;
	// -- stall --
	if sz jump (pc,.P34L12);

.P34L32:
.LN15:
// line 279
	call (pc,___lib_fdiv) (db);
	r8=pass r15, r4=dm(i3,m5);
	nop;

	dm(i3,m5)=r0;

.P34L12:
.LN16:
// line 282
	i2=dm(-4,i6);
	i3=dm(-3,i6);
	i5=dm(-2,i6);
	r11=dm(-8,i6);
	r13=dm(-7,i6);
	r14=dm(-6,i6);
	jump (m14,i12) (db);
	// -- stall --
	r15=dm(-5,i6);
	rframe;
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

	.extern ___lib_fdiv_simd;
	.type ___lib_fdiv_simd,STT_FUNC;
	.extern ___lib_fdiv;
	.type ___lib_fdiv,STT_FUNC;

	.section/DM/DOUBLE32 seg_dmda;

	.align 2;
	.type .epcbss,STT_OBJECT;
.epcbss:
	.var _delayBuffer[2205];
	.type _delayBuffer,STT_OBJECT;
.epcbss.end:

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
		0xF1,0x0B,0x00,0x00,0x02,0x00;
	.var = .epcabbrev;
	.byte =
		0x04,0x01,0x2E,0x2E,0x5C,0x73,0x72,0x63,0x5C,0x44,0x65,0x6C,
		0x61,0x79,0x2E,0x63,0x00,0x0C;
	.var = .epcline;
	.inc/binary ".\src\Delay.sbn", 259, 2865;
	.var = .LN_delay_with_feedback;
	.var = .LN._delay_with_feedback.end;
	.byte =
		0x01,0x01,0x00,0x12,0x66,0x65,0x65,0x64,0x62,0x61,0x63,0x6B,
		0x5F,0x67,0x61,0x69,0x6E,0x00,0x00,0x03,0x00,0x00,0x02,0x86,
		0x01,0x00,0x12,0x66,0x65,0x65,0x64,0x66,0x6F,0x72,0x77,0x61,
		0x72,0x64,0x5F,0x67,0x61,0x69,0x6E,0x00,0x00,0x03,0x00,0x00,
		0x02,0x86,0x02,0x00,0x13,0x00,0x00,0x00,0x00;
	.var = .LN0;
	.var = .LN._delay_with_feedback.end;
	.byte =
		0x13,0xB6,0x0B,0x00,0x00;
	.var = .LN0;
	.var = .LN11;
	.byte =
		0x13,0x00,0x00,0x00,0x00;
	.var = .LN2;
	.var = .LN11;
	.byte =
		0x00,0x00,0x13,0x00,0x00,0x00,0x00;
	.var = .LN12;
	.var = .LN16;
	.byte =
		0x00,0x00,0x00,0x14,0x64,0x65,0x6C,0x61,0x79,0x42,0x75,0x66,
		0x66,0x65,0x72,0x00,0x01,0xE3,0x0B,0x00,0x00,0x05,0x03;
	.var = _delayBuffer;
	.byte =
		0x00,0x00,0x00,0x00,0x00,0x08,0xF3,0x0B,0x00,0x00,0x00,0x03,
		0x00,0x00,0x09,0x9D,0x11,0x00,0x9C,0x11,0x00,0x00,0x00;
.epcdebug.end:

	.section .debug_line;

	.align 1;
	.type .epcline,STT_OBJECT;
.epcline:
	.inc/binary ".\src\Delay.sbn", 3124, 617;
	.var = .LN_delay_with_feedback;
	.byte =
		0x04,0x01,0x05,0x85,0x01,0x03,0xFE,0x01,0x01,0x00,0x05,0x02;
	.var = .LN0;
	.byte =
		0x05,0x05,0x0C,0x00,0x05,0x02;
	.var = .LN1;
	.byte =
		0x05,0x85,0x01,0x03,0x7D,0x01,0x00,0x05,0x02;
	.var = .LN2;
	.byte =
		0x05,0x09,0x11,0x00,0x05,0x02;
	.var = .LN3;
	.byte =
		0x05,0x1E,0x03,0x7E,0x01,0x00,0x05,0x02;
	.var = .LN4;
	.byte =
		0x05,0x0D,0x0C,0x00,0x05,0x02;
	.var = .LN5;
	.byte =
		0x0A,0x00,0x05,0x02;
	.var = .LN6;
	.byte =
		0x05,0x09,0x0E,0x00,0x05,0x02;
	.var = .LN7;
	.byte =
		0x04,0x0A,0x05,0x0C,0x0E,0x00,0x05,0x02;
	.var = .LN8;
	.byte =
		0x04,0x01,0x05,0x09,0x03,0x7B,0x01,0x00,0x05,0x02;
	.var = .LN9;
	.byte =
		0x05,0x28,0x03,0x74,0x01,0x00,0x05,0x02;
	.var = .LN10;
	.byte =
		0x05,0x05,0x01,0x00,0x05,0x02;
	.var = .LN11;
	.byte =
		0x1B,0x00,0x05,0x02;
	.var = .LN12;
	.byte =
		0x05,0x09,0x0B,0x00,0x05,0x02;
	.var = .LN13;
	.byte =
		0x05,0x0D,0x0A,0x00,0x05,0x02;
	.var = .LN14;
	.byte =
		0x05,0x09,0x03,0x7F,0x01,0x00,0x05,0x02;
	.var = .LN15;
	.byte =
		0x05,0x0D,0x0A,0x00,0x05,0x02;
	.var = .LN16;
	.byte =
		0x05,0x01,0x0C,0x00,0x05,0x02;
	.var = .LN._delay_with_feedback.end;
	.byte =
		0x00,0x01,0x01;
.epcline.end:

	.section .debug_pubnames;

	.align 1;
.epcpubnames:
	.type .epcpubnames,STT_OBJECT;
	.byte =
		0x26,0x00,0x00,0x00,0x02,0x00;
	.var = .epcdebug;
	.byte =
		0xF5,0x0B,0x00,0x00,0x37,0x0B,0x00,0x00,0x64,0x65,0x6C,0x61,
		0x79,0x5F,0x77,0x69,0x74,0x68,0x5F,0x66,0x65,0x65,0x64,0x62,
		0x61,0x63,0x6B,0x00,0x00,0x00,0x00,0x00;
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
