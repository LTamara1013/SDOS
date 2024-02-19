/*****************************************************************************
 * Tremolo.c
 *****************************************************************************/

#include "Tremolo.h"
#include "AudioProcessing.h"
#include "Normalization.h"

#ifdef TREMOLO_NO_OPT

/*
 * @brief Applies a tremolo effect to an input signal, without optimization.
 *
 * @details  The following code is conditionally compiled only if TREMOLO_NO_OPT
   is defined.
 *
 * @param input_signal Pointer to the array containing the input signal.
 * @param signal_length The number of samples in the input signal.
 * @param Fs Sampling frequency of the input signal (in Hz).
 * @param Flfo Frequency of the LFO used for amplitude modulation (in Hz).
 * @param alpha Modulation depth factor, ranging from 0.0 (no effect) to 1.0 (full effect).
 * @param output_signal Pointer to the array where the output signal will be stored.
 *
 * @note The arrays input_signal and output_signal must be pre-allocated and have enough space
 *       to hold signal_length samples. The function does not perform memory allocation.
 *
 */
void tremolo(float* input_signal, int signal_length, int Fs, int Flfo, float alpha, float* output_signal) {

	for (int i = 0; i < signal_length; i++) {
		output_signal[i] = (1 + alpha * sinf(2 * PI * Flfo * i / Fs)) * input_signal[i];
	}

	 normalization(output_signal,signal_length);

}
#endif

#ifdef TREMOLO_PRAGMA_OPT
/*
 * @brief Applies a tremolo effect to an input signal.
 *
 * @details  The following code is conditionally compiled only if TREMOLO_PRAGMA_OPT
   is defined.
 *
 * @param input_signal Pointer to the array containing the input signal.
 * @param signal_length The number of samples in the input signal.
 * @param Fs Sampling frequency of the input signal (in Hz).
 * @param Flfo Frequency of the LFO used for amplitude modulation (in Hz).
 * @param alpha Modulation depth factor, ranging from 0.0 (no effect) to 1.0 (full effect).
 * @param output_signal Pointer to the array where the output signal will be stored.
 *
 * @note The arrays input_signal and output_signal must be pre-allocated and have enough space
 *       to hold signal_length samples. The function does not perform memory allocation.
 *
 */
void tremolo(float* input_signal, int signal_length, int Fs, int Flfo, float alpha, float* output_signal) {
	#pragma vector_for
    for (int i = 0; i < signal_length; i++) {
        output_signal[i] = (1 + alpha * sinf(2 * PI * Flfo * i / Fs)) * input_signal[i];
    }

    normalization(output_signal,signal_length);
}
#endif

#ifdef TREMOLO_OPT
/*
 * @brief Applies a tremolo effect to an input signal.
 *
 * @details  The following code is conditionally compiled only if TREMOLO_OPT
   is defined.
 *
 * @param input_signal Pointer to the array containing the input signal.
 * @param signal_length The number of samples in the input signal.
 * @param Fs Sampling frequency of the input signal (in Hz).
 * @param Flfo Frequency of the LFO used for amplitude modulation (in Hz).
 * @param alpha Modulation depth factor, ranging from 0.0 (no effect) to 1.0 (full effect).
 * @param output_signal Pointer to the array where the output signal will be stored.
 *
 * @note The arrays input_signal and output_signal must be pre-allocated and have enough space
 *       to hold signal_length samples. The function does not perform memory allocation.
 *
 */
void tremolo(float* input_signal, int signal_length, int Fs, int Flfo, float alpha, float* output_signal) {
	//Precomputes a constant value used in the sine function calculation.
	 const float omega = 2 * PI * Flfo / Fs;

	#pragma vector_for
	// Combined operation loop
    for (int i = 0; i < signal_length; i++){
        output_signal[i] = (1 + alpha * sinf(omega * i)) * input_signal[i];
    }

    normalization(output_signal,signal_length);
}
#endif


