/*****************************************************************************
 * Normalization.h
 *****************************************************************************/
#include "Normalization.h"
#include "AudioProcessing.h"



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
float max_abs_value(float* array, int size) {
    float maxVal = 0.0;
    for (int i = 0; i < size; i++) {
        if (fabs(array[i]) > maxVal) {
            maxVal = fabs(array[i]);
        }
    }
    return maxVal;
}

/*
 * @brief Normalizes an input signal to a peak amplitude of 1.
 *
 * @param input_signal Pointer to the float array containing the input signal to be normalized.
 * @param signal_length The number of samples in the input signal.
 *
 */
void normalization(float* input_signal, int signal_length){
    float max_value = max_abs_value(input_signal, signal_length);
    float maxVal = 1.0 / max_value;
	#pragma vector_for
    for (int i = 0; i < signal_length; i++) {
        input_signal[i] *= maxVal;
    }
}
