/*****************************************************************************
 * Delay.h
 *****************************************************************************/

#ifndef DELAY_H_
#define DELAY_H_


#if defined DELAY_NO_OPT || defined DELAY_OPT || defined DELAY_CODE_OPT || defined DELAY_PRAGMA_OPT
/*
 * @brief Applies a delay effect to an input signal.
 *
 * @detailes This function applies a delay effect to the input signal using a pre-allocated buffer
 *           to store delayed samples. The following code is conditionally compiled only if DELAY_NO_OPT is defined.
 *
 * @param input_signal Pointer to the array containing the input signal.
 * @param output_signal Pointer to the array where the output signal will be stored.
 * @param length The number of samples in the input signal.
 *
 * @note The input_signal and output_signal arrays must be pre-allocated and
 *       have enough space to hold the necessary samples. The function does not perform
 *       memory allocation.
 *
 */
void delay(float *input, float *output, int length);


#endif


#if defined DELAY_FEEDBACK_NO_OPT || defined DELAY_FEEDBACK_PRAGMA
/*
 * @brief Implements a delay with feedback effect on an input signal, without optimizations.
 *
 * @detailes This function applies a delay effect with feedback to the input signal. The feedback loop
 *           allows part of the output signal to be mixed back into the delay line, creating repeating,
 *           decaying echoes. The following code is conditionally compiled only if DELAY_FEEDBACK_NO_OPT is defined.
 *
 *
 * @param input_signal Pointer to the array containing the input signal.
 * @param output_signal Pointer to the array where the output signal will be stored.
 * @param signal_length The number of samples in the input signal.
 * @param feedback_gain Feedback gain factor, controls the level of the delayed signal fed back into the mix.
 * @param feedforward_gain Feedforward gain factor, controls the level of the original signal in the mix.
 *
 * @note The arrays input and output must be pre-allocated and have enough space to hold size samples.
 *       The function does not perform memory allocation.
 *
 */

void delay_with_feedback(float* input_signal, float* output_signal, int signal_length, float feedback_gain, float feedforward_gain);
#endif


#endif /* DELAY_H_ */
