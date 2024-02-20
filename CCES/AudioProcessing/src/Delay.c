/*****************************************************************************
 * Delay.c
 *****************************************************************************/

#ifndef DELAY_C_
#define DELAY_C_

#include "Delay.h"
#include "AudioProcessing.h"
#include "Normalization.h"


#ifdef DELAY_FEEDBACK_NO_OPT
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


void delay_with_feedback(float* input_signal, float* output_signal, int signal_length, float feedback_gain, float feedforward_gain) {

    for (int i = 0; i < signal_length; i++) {
        float input_sample = input_signal[i];
        int buffer_index = i % DELAY_SAMPLES;
        float delayed_sample = delayBuffer[buffer_index];

        if (i >= DELAY_SAMPLES) {
            delayBuffer[buffer_index] = input_sample + feedback_gain * delayed_sample;
            output_signal[i] = input_sample + feedforward_gain * delayed_sample;
        } else {
            output_signal[i] = input_sample;
        }

    }

    normalization(output_signal,signal_length);
}
#endif

#ifdef DELAY_FEEDBACK_PRAGMA
/*
 * @brief Implements a delay with feedback effect on an input signal.
 *
 * @detailes This function applies a delay effect with feedback to the input signal. The feedback loop
 *           allows part of the output signal to be mixed back into the delay line, creating repeating,
 *           decaying echoes. The following code is conditionally compiled only if DELAY_FEEDBACK_PRAGMA is defined.
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


void delay_with_feedback(float* input_signal, float* output_signal, int signal_length, float feedback_gain, float feedforward_gain) {
#pragma vector_for
	for (int i = 0; i < signal_length; i++) {
        float input_sample = input_signal[i];
        int buffer_index = i % DELAY_SAMPLES;
        float delayed_sample = delayBuffer[buffer_index];

        if (i >= DELAY_SAMPLES) {
            delayBuffer[buffer_index] = input_sample + feedback_gain * delayed_sample;
            output_signal[i] = input_sample + feedforward_gain * delayed_sample;
        } else {
            output_signal[i] = input_sample;
        }
    }

    normalization(output_signal,signal_length);
}
#endif

#endif /* DELAY_C_ */
