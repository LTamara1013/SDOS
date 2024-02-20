/*****************************************************************************
 * WahWah.h
 *****************************************************************************/

#ifndef WAHWAH_H_
#define WAHWAH_H_



#if defined WAHWAH_NO_OPT || defined WAHWAH_PRAGMA

/*
 * @brief Implements a wahwah effect on an input audio signal.
 *
 * @details This function applies a wahwah effect, which is a type of spectral filter that sweeps its peak response
 *          frequency up and down the frequency spectrum.
 *
 * @param input_signal Pointer to the array containing the input signal.
 * @param output_signal Pointer to the array where the output signal will be stored.
 * @param length The number of samples in the input signal.
 *
 * @note The input and output arrays must be pre-allocated with sufficient space to hold all samples. The function
 *       does not perform memory allocation.
 *
 */

void wahwah(float *input_signal, float *output_signal, int length);
#endif
#endif /* WAHWAH_H_ */
