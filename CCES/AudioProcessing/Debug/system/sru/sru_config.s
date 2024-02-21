	.file "..\system\sru\sru_config.c";
//  Compilation time: Mon Feb  1 13:37:21 2021
//  Compiler options: -c -file-attr ProjectName=AudioProcessing -proc ADSP-21489 -flags-compiler --no_wrap_diagnostics -si-revision 0.2 -O -Ov100 -g -save-temps -path-output .\system\sru -DCORE0 -D_DEBUG -ID:/CrossCore/Workspace/AudioProcessing/system -structs-do-not-overlap -no-const-strings -multiline -warn-protos -Wremarks -double-size-32 -swc -gnu-style-dependencies -MD -Mo system\sru\sru_config.d -o system\sru\sru_config.doj
//  Compiler version: 8.15.1.0 (61a2eff16741378b1ae40f6392a0806696679a50)
//  Architecture: ADSP-21489
//  Silicon revision: 0.2
//  Anomalies summary:
//   Disabled: w_anomaly_45, w_anomaly_2126x_4, w_dag_stall, w_2136x_multi, w_2136x_mem_write, w_09000014, w_09000018, w_09000020, w_07000009_1, w_07000009_2, w_09000021, w_09000022, w_15000011, w_09000023, w_15000016, w_15000023, w_20000002, w_20000022, w_20000020, w_20000024, w_20000023, w_20000009, w_20000069, w_20000083
//   Enabled: w_15000003, w_15000004, w_15000005
//   Always on: w_simd, w_restore_loop_stack

	.section/SW/DOUBLE32 seg_swco;

.epctext:

_adi_SRU_Init:
.LN_adi_SRU_Init:
//-------------------------------------------------------------------
//  Procedure statistics:
//  Frame size            = 2 words
//  Scratch registers used: {r0,i12}
//  No call preserved registers used.
//-------------------------------------------------------------------
.LN0:
// line "..\system\sru\sru_config.c":411
	i12=dm(m7,i6);
	// -- stall --
	jump (m14,i12) (db);
	r0=m5;
	rframe;
.LN._adi_SRU_Init.end:
._adi_SRU_Init.end:
	.global _adi_SRU_Init;
	.type _adi_SRU_Init,STT_FUNC;

	.file_attr ProjectName="AudioProcessing";
	.file_attr FuncName="_adi_SRU_Init";
	.file_attr Encoding="SW";
	.file_attr Content="Code";
.epctext.end:

	.section .debug_abbrev;

	.align 1;
	.type .epcabbrev,STT_OBJECT;
.epcabbrev:
	.inc/binary ".\system\sru\sru_config.sbn", 0, 135;
.epcabbrev.end:

	.section .debug_info;

	.align 1;
	.type .epcdebug,STT_OBJECT;
.epcdebug:
	.byte =
		0x8B,0x06,0x00,0x00,0x02,0x00;
	.var = .epcabbrev;
	.byte =
		0x04,0x01,0x2E,0x2E,0x5C,0x73,0x79,0x73,0x74,0x65,0x6D,0x5C,
		0x73,0x72,0x75,0x5C,0x73,0x72,0x75,0x5F,0x63,0x6F,0x6E,0x66,
		0x69,0x67,0x2E,0x63,0x00,0x0C;
	.var = .epcline;
	.inc/binary ".\system\sru\sru_config.sbn", 135, 1603;
	.var = .LN_adi_SRU_Init;
	.var = .LN._adi_SRU_Init.end;
	.byte =
		0x01,0x67,0x04,0x00,0x00,0x01,0x00,0x09,0x00,0x00,0x00,0x00;
	.var = .LN0;
	.var = .LN._adi_SRU_Init.end;
	.byte =
		0x00,0x00,0x00,0x00;
.epcdebug.end:

	.section .debug_line;

	.align 1;
	.type .epcline,STT_OBJECT;
.epcline:
	.inc/binary ".\system\sru\sru_config.sbn", 1738, 388;
	.var = .LN_adi_SRU_Init;
	.byte =
		0x04,0x01,0x05,0x01,0x23,0x00,0x05,0x02;
	.var = .LN0;
	.byte =
		0x05,0x05,0x03,0x80,0x03,0x01,0x00,0x05,0x02;
	.var = .LN._adi_SRU_Init.end;
	.byte =
		0x00,0x01,0x01;
.epcline.end:

	.section .debug_pubnames;

	.align 1;
.epcpubnames:
	.type .epcpubnames,STT_OBJECT;
	.byte =
		0x1F,0x00,0x00,0x00,0x02,0x00;
	.var = .epcdebug;
	.byte =
		0x8F,0x06,0x00,0x00,0x5C,0x06,0x00,0x00,0x61,0x64,0x69,0x5F,
		0x53,0x52,0x55,0x5F,0x49,0x6E,0x69,0x74,0x00,0x00,0x00,0x00,
		0x00;
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
	.var = .LN_adi_SRU_Init;
	.var = .LN._adi_SRU_Init.end-.LN_adi_SRU_Init;
	.byte =
		0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00;
.epcaranges.end:
