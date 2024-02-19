/*****************************************************************************
 * Write.h
 *****************************************************************************/
#ifndef WRITE_H_
#define WRITE_H_



/*
 * @brief Writing image to binary file.
 *
 * @param filename		- The name of the file to save.
 * @param output_data	- Pointer to the pixel data array.
 * @param length		- The length of the audio in output_data.
 */
void write(const char* filename, float* output_data, int length);
void write_txt(const char* filename, float* output_data, int length);

#endif /* WRITE_H_ */
