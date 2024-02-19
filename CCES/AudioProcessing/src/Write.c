/*****************************************************************************
 * Write.c
 *****************************************************************************/
#include "Write.h"
#include "AudioProcessing.h"


/*
 * @brief Writing image to binary file.
 *
 * @param filename		- The name of the file to save.
 * @param output_data	- Pointer to the pixel data array.
 * @param length		- The length of the audio in output_data.
 */
void write(const char* filename,float* output_data, int length){
	FILE *fp;
	fp = fopen(filename,"wb");
	if(fp == NULL){
		printf("Error opening file.\n");
		return ;
	}
	for(int i = 0; i < length;i++){

		fwrite(&output_data[i],sizeof(float),1,fp);
	}
	fclose(fp);
	printf("Data written successfully.");
}

