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

void write_txt(const char* filename, float* output_data, int length){
    FILE *fp;
    fp = fopen(filename, "w");  // Otvorite datoteku za pisanje kao tekstualnu datoteku
    if(fp == NULL){
        printf("Error opening file.\n");
        return;
    }

    for(int i = 0; i < length; i++){
        // Upisivanje svakog broja kao stringa. Možete kontrolisati formatisanje kao što želite.
        fprintf(fp, "%.8f\n", output_data[i]);  // %.8f za zapisivanje float-a sa 8 decimala
    }

    fclose(fp);  // Zatvaranje datoteke
    printf("Data written to %s successfully.\n", filename);
}
