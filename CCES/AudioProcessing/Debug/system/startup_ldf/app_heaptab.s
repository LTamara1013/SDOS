	.file "..\system\startup_ldf\app_heaptab.c";
//  Compilation time: Mon Feb  1 01:23:12 2021
//  Compiler options: -c -file-attr ProjectName=AudioProcessing -proc ADSP-21489 -flags-compiler --no_wrap_diagnostics -si-revision 0.2 -O -Ov100 -g -save-temps -path-output .\system\startup_ldf -DCORE0 -D_DEBUG -ID:/CrossCore/Workspace/AudioProcessing/system -structs-do-not-overlap -no-const-strings -multiline -warn-protos -Wremarks -double-size-32 -swc -gnu-style-dependencies -MD -Mo system\startup_ldf\app_heaptab.d -o system\startup_ldf\app_heaptab.doj
//  Compiler version: 8.15.1.0 (61a2eff16741378b1ae40f6392a0806696679a50)
//  Architecture: ADSP-21489
//  Silicon revision: 0.2
//  Anomalies summary:
//   Disabled: w_anomaly_45, w_anomaly_2126x_4, w_dag_stall, w_2136x_multi, w_2136x_mem_write, w_09000014, w_09000018, w_09000020, w_07000009_1, w_07000009_2, w_09000021, w_09000022, w_15000011, w_09000023, w_15000016, w_15000023, w_20000002, w_20000022, w_20000020, w_20000024, w_20000023, w_20000009, w_20000069, w_20000083
//   Enabled: w_15000003, w_15000004, w_15000005
//   Always on: w_simd, w_restore_loop_stack
	.file_attr libData="HeapTable";
	.file_attr ProjectName="AudioProcessing";
	.file_attr FuncName="_llabs";
	.file_attr FuncName="_llmin";
	.file_attr FuncName="_llmax";
	.file_attr Encoding="SW";
	.file_attr Content="CodeData";

	.section/SW/DOUBLE32 seg_swco;

.epctext:

	.section .debug_abbrev;

	.align 1;
	.type .epcabbrev,STT_OBJECT;
.epcabbrev:
	.inc/binary ".\system\startup_ldf\app_heaptab.sbn", 0, 182;
.epcabbrev.end:

	.section .debug_info;

	.align 1;
	.type .epcdebug,STT_OBJECT;
.epcdebug:
	.byte =
		0xB4,0x05,0x00,0x00,0x02,0x00;
	.var = .epcabbrev;
	.byte =
		0x04,0x01,0x2E,0x2E,0x5C,0x73,0x79,0x73,0x74,0x65,0x6D,0x5C,
		0x73,0x74,0x61,0x72,0x74,0x75,0x70,0x5F,0x6C,0x64,0x66,0x5C,
		0x61,0x70,0x70,0x5F,0x68,0x65,0x61,0x70,0x74,0x61,0x62,0x2E,
		0x63,0x00,0x0C;
	.var = .epcline;
	.inc/binary ".\system\startup_ldf\app_heaptab.sbn", 182, 1320;
	.var = ldf_heap_space;
	.byte =
		0x00,0x00,0x00,0x00,0x01,0x0C,0x6C,0x64,0x66,0x5F,0x68,0x65,
		0x61,0x70,0x5F,0x6C,0x65,0x6E,0x67,0x74,0x68,0x00,0x01,0x32,
		0x02,0x00,0x00,0x05,0x03;
	.var = ldf_heap_length;
	.byte =
		0x00,0x00,0x00,0x00,0x01,0x0C,0x68,0x65,0x61,0x70,0x5F,0x74,
		0x61,0x62,0x6C,0x65,0x00,0x01,0xA8,0x05,0x00,0x00,0x05,0x03;
	.var = _heap_table;
	.byte =
		0x00,0x00,0x00,0x00,0x00,0x0B,0xF3,0x03,0x00,0x00,0x0D,0xB6,
		0x05,0x00,0x00,0xA3,0x05,0x00,0x00,0x0E,0x02,0x00,0x01,0x00,
		0x00,0x00;
.epcdebug.end:

	.section .debug_line;

	.align 1;
	.type .epcline,STT_OBJECT;
.epcline:
	.inc/binary ".\system\startup_ldf\app_heaptab.sbn", 1502, 274;
.epcline.end:

	.section .debug_pubnames;

	.align 1;
.epcpubnames:
	.type .epcpubnames,STT_OBJECT;
	.byte =
		0x1D,0x00,0x00,0x00,0x02,0x00;
	.var = .epcdebug;
	.byte =
		0xB8,0x05,0x00,0x00,0x87,0x05,0x00,0x00,0x68,0x65,0x61,0x70,
		0x5F,0x74,0x61,0x62,0x6C,0x65,0x00,0x00,0x00,0x00,0x00;
.epcpubnames.end:

	.section .debug_aranges;

	.align 1;
.epcaranges:
	.type .epcaranges,STT_OBJECT;
	.byte =
		0x10,0x00,0x00,0x00,0x02,0x00;
	.var = .epcdebug;
	.byte =
		0x01,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00;
.epcaranges.end:

	.section/DM/DOUBLE32 seg_dmda;

	.align 2;
	.global _heap_table;
	.type _heap_table,STT_OBJECT;
_heap_table:
	.var = ldf_heap_space;
	.var = ldf_heap_length;
	.var =
		 0x00000000, 0x00000000, 0x00000000, 0x00000000;
._heap_table.end:

	.extern ldf_heap_space;
	.type ldf_heap_space,STT_OBJECT;
	.extern ldf_heap_length;
	.type ldf_heap_length,STT_OBJECT;
