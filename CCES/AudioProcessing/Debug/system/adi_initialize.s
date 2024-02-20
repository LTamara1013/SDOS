	.file "..\system\adi_initialize.c";
//  Compilation time: Mon Feb  1 19:27:48 2021
//  Compiler options: -c -file-attr ProjectName=AudioProcessing -proc ADSP-21489 -flags-compiler --no_wrap_diagnostics -si-revision 0.2 -g -save-temps -path-output .\system -DCORE0 -D_DEBUG -ID:/CrossCore/Workspace/AudioProcessing/system -structs-do-not-overlap -no-const-strings -multiline -warn-protos -Wremarks -double-size-32 -swc -gnu-style-dependencies -MD -Mo system\adi_initialize.d -o system\adi_initialize.doj
//  Compiler version: 8.15.1.0 (61a2eff16741378b1ae40f6392a0806696679a50)
//  Architecture: ADSP-21489
//  Silicon revision: 0.2
//  Anomalies summary:
//   Disabled: w_anomaly_45, w_anomaly_2126x_4, w_dag_stall, w_2136x_multi, w_2136x_mem_write, w_09000014, w_09000018, w_09000020, w_07000009_1, w_07000009_2, w_09000021, w_09000022, w_15000011, w_09000023, w_15000016, w_15000023, w_20000002, w_20000022, w_20000020, w_20000024, w_20000023, w_20000009, w_20000069, w_20000083
//   Enabled: w_15000003, w_15000004, w_15000005
//   Always on: w_simd, w_restore_loop_stack

	.section/SW/DOUBLE32 seg_swco;

.epctext:

_adi_initComponents:
.LN_adi_initComponents:
//-------------------------------------------------------------------
//  Procedure statistics:
//  Frame size            = 4 words
//  Scratch registers used: {i12}
//  No call preserved registers used.
//  Registers that could be clobbered by function calls: {r0-r2,r4,r8,r12,s0-s15,i4,i12-i13,b4,b12-b13,m4,m12,ustat1-ustat4,acc,mcc,scc,btf,sacc,smcc,sscc,sbtf,stky,stkyy,msf,msb,lcntr,px}
//-------------------------------------------------------------------
// line "..\system\adi_initialize.c":17
	modify(i7,-2);
.LN0:
// line 18
	dm(-2,i6)=m13;

.LN1:
// line 22
	cjump _adi_SRU_Init (db); dm(i7,m7)=r2; dm(i7,m7)=.LCJ0-1;
.LCJ0:
.LN2:
	dm(-2,i6)=r0;

.LN3:
// line 25
	i12=dm(m7,i6);
	jump (m14,i12) (db); rframe; nop;
.LN._adi_initComponents.end:
._adi_initComponents.end:
	.global _adi_initComponents;
	.type _adi_initComponents,STT_FUNC;

	.file_attr ProjectName="AudioProcessing";
	.file_attr FuncName="_adi_initComponents";
	.file_attr Encoding="SW";
	.file_attr Content="Code";
.epctext.end:

	.extern _adi_SRU_Init;
	.type _adi_SRU_Init,STT_FUNC;

	.section .debug_abbrev;

	.align 1;
	.type .epcabbrev,STT_OBJECT;
.epcabbrev:
	.inc/binary ".\system\adi_initialize.sbn", 0, 152;
.epcabbrev.end:

	.section .debug_info;

	.align 1;
	.type .epcdebug,STT_OBJECT;
.epcdebug:
	.byte =
		0xA6,0x06,0x00,0x00,0x02,0x00;
	.var = .epcabbrev;
	.byte =
		0x04,0x01,0x2E,0x2E,0x5C,0x73,0x79,0x73,0x74,0x65,0x6D,0x5C,
		0x61,0x64,0x69,0x5F,0x69,0x6E,0x69,0x74,0x69,0x61,0x6C,0x69,
		0x7A,0x65,0x2E,0x63,0x00,0x0C;
	.var = .epcline;
	.inc/binary ".\system\adi_initialize.sbn", 152, 1609;
	.var = .LN_adi_initComponents;
	.var = .LN._adi_initComponents.end;
	.byte =
		0x01,0xA8,0x04,0x00,0x00,0x01,0x00,0x09,0x00,0x00,0x00,0x00;
	.var = .LN0;
	.var = .LN._adi_initComponents.end;
	.byte =
		0x0A,0x72,0x65,0x73,0x75,0x6C,0x74,0x00,0x01,0xA8,0x04,0x00,
		0x00,0x02,0x86,0x7E;
	.var = .LN0-.LN_adi_initComponents;
	.byte =
		0x00,0x00,0x00,0x00,0x00;
.epcdebug.end:

	.section .debug_line;

	.align 1;
	.type .epcline,STT_OBJECT;
.epcline:
	.inc/binary ".\system\adi_initialize.sbn", 1761, 409;
	.var = .LN_adi_initComponents;
	.byte =
		0x04,0x01,0x05,0x01,0x19,0x00,0x05,0x02;
	.var = .LN0;
	.byte =
		0x05,0x0A,0x0A,0x00,0x05,0x02;
	.var = .LN1;
	.byte =
		0x05,0x18,0x0D,0x00,0x05,0x02;
	.var = .LN2;
	.byte =
		0x05,0x03,0x01,0x00,0x05,0x02;
	.var = .LN3;
	.byte =
		0x05,0x02,0x0C,0x00,0x05,0x02;
	.var = .LN._adi_initComponents.end;
	.byte =
		0x00,0x01,0x01;
.epcline.end:

	.section .debug_pubnames;

	.align 1;
.epcpubnames:
	.type .epcpubnames,STT_OBJECT;
	.byte =
		0x25,0x00,0x00,0x00,0x02,0x00;
	.var = .epcdebug;
	.byte =
		0xAA,0x06,0x00,0x00,0x5C,0x06,0x00,0x00,0x61,0x64,0x69,0x5F,
		0x69,0x6E,0x69,0x74,0x43,0x6F,0x6D,0x70,0x6F,0x6E,0x65,0x6E,
		0x74,0x73,0x00,0x00,0x00,0x00,0x00;
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
	.var = .LN_adi_initComponents;
	.var = .LN._adi_initComponents.end-.LN_adi_initComponents;
	.byte =
		0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00;
.epcaranges.end:
