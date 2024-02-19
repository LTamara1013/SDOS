/*****************************************************************************
 * AudioProcessing.c
 *****************************************************************************/
#define DO_CYCLE_COUNTS 1
#include <sys/platform.h>
#include "adi_initialize.h"
#include "AudioProcessing.h"
#include "audio_data.h"
//#include "test_signal.h"
#include "Delay.h"
#include "Tremolo.h"
#include "Flanger.h"
#include "Write.h"



cycle_t start_count;
cycle_t final_count;


//const char *filename = "output_data_tremolo.bin";

#pragma section("seg_sram")
static char extra_heap[512000];
int index = 0;


int main(int argc, char *argv[])
{

	adi_initComponents();
	//FILE *fp;
	float* output_data = NULL;
	float* input_data = NULL;

	int uid = 999;

	index = heap_install(extra_heap, sizeof(extra_heap),uid);
	if(index < 0 ){
		printf("Installation failed.\n");
		return -1;
	}
	output_data = (float*)heap_malloc(index,AUDIO_DATA_LENGTH * sizeof(float));
	if(output_data == NULL){
		printf("Memory allocation failed.\n");
		return -1;
	}
	input_data = (float*)heap_malloc(index,AUDIO_DATA_LENGTH * sizeof(float));
	if(input_data == NULL){
		printf("Memory allocation failed.\n");
		return -1;
	}

	memset(output_data, 0, AUDIO_DATA_LENGTH * sizeof(float));

	for(int i = 0; i < AUDIO_DATA_LENGTH;i++){
		input_data[i] = audio_data[i];
	}


	START_CYCLE_COUNT(start_count);
	//tremolo(input_data, AUDIO_DATA_LENGTH, SAMPLE_RATE, 2, 0.6, output_data);
	//delay(input_data,output_data,AUDIO_DATA_LENGTH);
	//delay_with_feedback(input_data, output_data, AUDIO_DATA_LENGTH, 0.8, 0.4);
	flanger(input_data, output_data, AUDIO_DATA_LENGTH, 0.9, 0.5);
	//flanger_with_feedback(input_data,output_data,AUDIO_DATA_LENGTH, 0.9, 0.5, 0.5);

	STOP_CYCLE_COUNT(final_count, start_count);
	PRINT_CYCLES("Delay Cycles: ", final_count);

	//write("output_flanger_feedback_c.bin",output_data,AUDIO_DATA_LENGTH);


	heap_free(index,output_data);
	return 0;
}

