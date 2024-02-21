/*****************************************************************************
 * AudioProcessing.c
 *****************************************************************************/
#define DO_CYCLE_COUNTS 1
#include <sys/platform.h>
#include "adi_initialize.h"
#include "AudioProcessing.h"
//#include "audio_data.h"
#include "acoustic_.h"
#include "Delay.h"
#include "Tremolo.h"
#include "Flanger.h"
#include "WahWah.h"
#include "Write.h"



cycle_t start_count;
cycle_t final_count;


//const char *filename = "output_data_tremolo.bin";

#pragma section("seg_sram")
static char extra_heap[512000];

int index = 0;

void init_SRU(void)
{
	//** LED01**//
	SRU(HIGH,DPI_PBEN06_I);
	SRU(FLAG4_O,DPI_PB06_I);
	//** LED02**//
	SRU(HIGH,DPI_PBEN13_I);
	SRU(FLAG5_O,DPI_PB13_I);
	//** LED03**//
	SRU(HIGH,DPI_PBEN14_I);
	SRU(FLAG6_O,DPI_PB14_I);
	//** LED04**//
	SRU(HIGH,DAI_PBEN03_I);
	SRU(HIGH,DAI_PB03_I);
	//** LED05**//
	SRU(HIGH,DAI_PBEN04_I);
	SRU(HIGH,DAI_PB04_I);
	//** LED06**//
	SRU(HIGH,DAI_PBEN15_I);
	SRU(HIGH,DAI_PB15_I);
	//** LED07**//
	SRU(HIGH,DAI_PBEN16_I);
	SRU(HIGH,DAI_PB16_I);
	//** LED08**//
	SRU(HIGH,DAI_PBEN17_I);
	SRU(HIGH,DAI_PB17_I);
	//Setting flag pins as outputs
	sysreg_bit_set(sysreg_FLAGS, (FLG4O|FLG5O|FLG6O) );
	//Setting HIGH to flag pins
	sysreg_bit_set(sysreg_FLAGS, (FLG4|FLG5|FLG6) );
}
void delay_cycles(unsigned int delayCount)
{
	/* delayCount = 1 => 38ns delay */
	while(delayCount--);
}

void mixSignals(float* signalA, float* signalB, float* mixedOutput, int length, float mixRatio) {
    // range [0.0, 1.0]
    if (mixRatio < 0.0) mixRatio = 0.0;
    if (mixRatio > 1.0) mixRatio = 1.0;

    float inverseMixRatio = 1.0 - mixRatio;

    for (int i = 0; i < length; i++) {
        // Mix the signals based on the mix ratio
        mixedOutput[i] = mixRatio * signalB[i] + inverseMixRatio * signalA[i];
    }
}
int main(int argc, char *argv[])
{

	adi_initComponents();

	init_SRU();

	//Turn off LEDs
	sysreg_bit_clr(sysreg_FLAGS, FLG4);
	sysreg_bit_clr(sysreg_FLAGS, FLG6);
	SRU(LOW,DAI_PB03_I);
	SRU(LOW,DAI_PB04_I);
	SRU(LOW,DAI_PB15_I);
	SRU(LOW,DAI_PB16_I);
	SRU(LOW,DAI_PB17_I);
	//FILE *fp;
	float* output_data = NULL;
	float* temp1 = NULL;
	float* temp2 = NULL;

	int uid = 999;

	index = heap_install(extra_heap, sizeof(extra_heap),uid);
	if(index < 0 ){
		printf("Installation failed.\n");
		return -1;
	}
	output_data = (float*)heap_malloc(index,AUDIO_DATA_LENGTH * sizeof(float));
	temp1 = (float*)heap_malloc(index,AUDIO_DATA_LENGTH * sizeof(float));
	temp2 = (float*)heap_malloc(index,AUDIO_DATA_LENGTH * sizeof(float));
	if(output_data == NULL || temp1 == NULL || temp2 == NULL){
		printf("Memory allocation failed.\n");
		return -1;
	}


	memset(output_data, 0, AUDIO_DATA_LENGTH * sizeof(float));
	memset(temp1, 0, AUDIO_DATA_LENGTH * sizeof(float));
	memset(temp2, 0, AUDIO_DATA_LENGTH * sizeof(float));


	delay_cycles(3500000);
	// Turn on LED01
	sysreg_bit_set(sysreg_FLAGS, FLG4);

	START_CYCLE_COUNT(start_count);
	delay_with_feedback(audio_data, output_data, AUDIO_DATA_LENGTH, 0.8, 0.4);
	STOP_CYCLE_COUNT(final_count, start_count);
	PRINT_CYCLES("Delay: ", final_count);
	//write("acoustic_output_delay_with_feedback_c.bin",output_data,AUDIO_DATA_LENGTH);
	delay_cycles(3500000);


	// Turn on LED02
	sysreg_bit_set(sysreg_FLAGS, FLG5);

	START_CYCLE_COUNT(start_count);
	tremolo(audio_data,output_data, AUDIO_DATA_LENGTH, 2, 0.6);
	STOP_CYCLE_COUNT(final_count, start_count);
	PRINT_CYCLES("Tremolo: ", final_count);
	//write("acoustic_output_tremolo_c.bin",output_data,AUDIO_DATA_LENGTH);

	delay_cycles(3500000);
	// Turn on LED03
	sysreg_bit_set(sysreg_FLAGS, FLG6);

	START_CYCLE_COUNT(start_count);
	flanger(audio_data, output_data, AUDIO_DATA_LENGTH, 0.9, 0.5);
	STOP_CYCLE_COUNT(final_count, start_count);
	PRINT_CYCLES("Flanger: ", final_count);
	//write("acoustic_output_flanger_c.bin",output_data,AUDIO_DATA_LENGTH);
	 delay_cycles(3500000);


	// Turn on LED04
	SRU(HIGH,DAI_PB03_I);

	START_CYCLE_COUNT(start_count);
	flanger_with_feedback(audio_data,output_data,AUDIO_DATA_LENGTH, 1 ,0.5, 0.5);
	STOP_CYCLE_COUNT(final_count, start_count);
	PRINT_CYCLES("Flanger with feedback: ", final_count);
	write("acoustic1_output_flanger_with_feedback_c.bin",output_data,AUDIO_DATA_LENGTH);

	 delay_cycles(3500000);
	// Turn on LED05
	SRU(HIGH,DAI_PB04_I);
	START_CYCLE_COUNT(start_count);
	wahwah(audio_data,output_data,AUDIO_DATA_LENGTH);
	STOP_CYCLE_COUNT(final_count, start_count);
	PRINT_CYCLES("WahWah: ", final_count);
	//write("acoustic_output_wahwah_c.bin",output_data,AUDIO_DATA_LENGTH);

	delay_cycles(3500000);
	// Turn on LED06
	SRU(HIGH,DAI_PB15_I);
	START_CYCLE_COUNT(start_count);
	tremolo(audio_data,temp1, AUDIO_DATA_LENGTH, 2, 0.6);
	wahwah(temp1,output_data,AUDIO_DATA_LENGTH);
	//write("output_tremolo_wahwah_c.bin",output_data,AUDIO_DATA_LENGTH);
	STOP_CYCLE_COUNT(final_count, start_count);
	PRINT_CYCLES("Delay and WahWah: ", final_count);

	delay_cycles(3500000);
	// Turn on LED07
	SRU(HIGH,DAI_PB16_I);
	START_CYCLE_COUNT(start_count);
	flanger(audio_data, temp1, AUDIO_DATA_LENGTH, 0.9, 0.5);
	wahwah(audio_data, temp2,AUDIO_DATA_LENGTH);
	mixSignals(temp1, temp2, output_data, AUDIO_DATA_LENGTH, 0.5);
	//write("output_flanger_wahwah_c.bin",output_data,AUDIO_DATA_LENGTH);
	STOP_CYCLE_COUNT(final_count, start_count);
	PRINT_CYCLES("Flanger and WahWah- parallel: ", final_count);

	delay_cycles(3500000);
	 // Turn on LED08
	 SRU(HIGH,DAI_PB17_I);
	 printf("Done.\n");

	heap_free(index,output_data);
	heap_free(index,temp1);
	heap_free(index,temp2);
	return 0;
}

