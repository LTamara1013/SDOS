/*****************************************************************************
 * Tremolo.h
 *****************************************************************************/
#ifndef TREMOLO_H_
#define TREMOLO_H_


//#define PI 3.14159265358979323846


#if defined TREMOLO_NO_OPT || defined TREMOLO_PRAGMA_OPT || defined TREMOLO_OPT


/*
 * @brief Applies a tremolo effect to an input signal.
 *
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

void tremolo(float* input_signal, int signal_length, int Fs, int Flfo, float alpha, float* output_signal);
#endif

#endif /* TREMOLO_H_ */
