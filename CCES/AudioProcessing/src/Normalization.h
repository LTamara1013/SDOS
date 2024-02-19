/*****************************************************************************
 * Normalization.h
 *****************************************************************************/
#ifndef NORMALIZATION_H_
#define NORMALIZATION_H_



/*
 * @brief Calculates the maximum absolute value in an array of floats.
 *
 * @param array Pointer to the float array whose maximum absolute value is to be found.
 * @param size The number of elements in the array.
 *
 * @return The maximum absolute value among the elements in the array. If the array is empty
 *         (size is 0), the function returns 0.
 *
 */
float max_abs_value(float* array, int size);

/*
 * @brief Normalizes an input signal to a peak amplitude of 1.
 *
 * @param input_signal Pointer to the float array containing the input signal to be normalized.
 * @param signal_length The number of samples in the input signal.
 *
 */

void normalization(float* input_signal, int signal_length);

#endif /* NORMALIZATION_H_ */
