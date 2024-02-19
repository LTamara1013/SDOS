/*****************************************************************************
 * Delay.c
 *****************************************************************************/

#ifndef DELAY_C_
#define DELAY_C_

#include "Delay.h"
#include "AudioProcessing.h"
#include "Normalization.h"


#ifdef DELAY_NO_OPT
/*
 * @brief Applies a delay effect to an input signal.
 *
 * @detailes This function applies a delay effect to the input signal using a pre-allocated buffer
 *           to store delayed samples. The following code is conditionally compiled only if DELAY_NO_OPT is defined.
 *
 * @param input_signal Pointer to the array containing the input signal.
 * @param signal_length The number of samples in the input signal.
 * @param output_signal Pointer to the array where the output signal will be stored.
 *
 * @note The input_signal and output_signal arrays must be pre-allocated and
 *       have enough space to hold the necessary samples. The function does not perform
 *       memory allocation.
 *
 */

void delay(float *input_signal, float *output_signal, int length) {
    int readIndex = 0, writeIndex = 0;
    float inSample = 0.0;
    float delayedSample = 0.0;
    float outSample = 0.0;
    memset(delayBuffer, 0, sizeof(float) * DELAY_SAMPLES);
    for (int i = 0; i < length; ++i) {
    	if( i < DELAY_SAMPLES){
    		output_signal[i] = input_signal[i];
    	}
    	else{
    	inSample = input_signal[i];
    	delayedSample = delayBuffer[readIndex];
    	outSample = inSample + (delayedSample * GAIN);

        output_signal[i] = outSample;

        delayBuffer[writeIndex] = inSample + (delayedSample * GAIN);
    	}
        readIndex = (readIndex + 1) % DELAY_SAMPLES;
        writeIndex = (writeIndex + 1) % DELAY_SAMPLES;
    }

    normalization(output_signal,length);

}
#endif

#ifdef DELAY_PRAGMA_OPT
/*
 * @brief Applies a delay effect to an input signal.
 *
 * @detailes This function applies a delay effect to the input signal using a pre-allocated buffer
 *           to store delayed samples. The following code is conditionally compiled only if DELAY_PRAGMA_OPT is defined.
 *
 * @param input_signal Pointer to the array containing the input signal.
 * @param signal_length The number of samples in the input signal.
 * @param output_signal Pointer to the array where the output signal will be stored.
 *
 * @note The input_signal and output_signal arrays must be pre-allocated and
 *       have enough space to hold the necessary samples. The function does not perform
 *       memory allocation.
 *
 */

void delay(float *input_signal, float *output_signal, int length) {
    int readIndex = 0, writeIndex = 0;
    float inSample = 0.0;
    float delayedSample = 0.0;
    float outSample = 0.0;
    memset(delayBuffer, 0, sizeof(float) * DELAY_SAMPLES);
	#pragma vector_for
    for (int i = 0; i < length; ++i) {
    	if( i < DELAY_SAMPLES){
    		output_signal[i] = input_signal[i];
    	}
    	else{
    	inSample = input_signal[i];
    	delayedSample = delayBuffer[readIndex];
    	outSample = inSample + (delayedSample * GAIN);

        output_signal[i] = outSample;

        delayBuffer[writeIndex] = inSample + (delayedSample * GAIN);
    	}
        readIndex = (readIndex + 1) % DELAY_SAMPLES;
        writeIndex = (writeIndex + 1) % DELAY_SAMPLES;
    }

    normalization(output_signal,length);

}
#endif

#ifdef DELAY_CODE_OPT
/*
 * @brief Applies a delay effect to an input signal.
 *
 * @detailes This function applies a delay effect to the input signal using a pre-allocated buffer
 *           to store delayed samples. The following code is conditionally compiled only if DELAY_CODE_OPT is defined.
 *
 * @param input_signal Pointer to the array containing the input signal.
 * @param signal_length The number of samples in the input signal.
 * @param output_signal Pointer to the array where the output signal will be stored.
 *
 * @note The input_signal and output_signal arrays must be pre-allocated and
 *       have enough space to hold the necessary samples. The function does not perform
 *       memory allocation.
 *
 */

void delay(float *input_signal, float *output_signal, int length) {
	int readIndex = 0, writeIndex = 0;
	float inSample = 0.0;
	float delayedSample = 0.0;
	float outSample = 0.0;
	memset(delayBuffer, 0, sizeof(float) * DELAY_SAMPLES);
    float maxVal = 0.0;


    for (int i = 0; i < DELAY_SAMPLES && i < length; ++i) {
        output_signal[i] = input_signal[i];
        maxVal = fmaxf(maxVal, fabs(output_signal[i]));
    }

    for (int i = DELAY_SAMPLES; i < length; ++i) {
    	inSample = input_signal[i];
    	delayedSample = delayBuffer[readIndex];
    	outSample = inSample + (delayedSample * GAIN);

    	output_signal[i] = outSample;

    	delayBuffer[writeIndex] = inSample + (delayedSample * GAIN);
    	maxVal = fmaxf(maxVal, fabs(outSample));
    }
    readIndex = (readIndex + 1) % DELAY_SAMPLES;
    writeIndex = (writeIndex + 1) % DELAY_SAMPLES;

    if (maxVal > 0.0) {

        for (int i = 0; i < length; ++i) {
            output_signal[i] /= maxVal;
        }
    }
}
#endif

#ifdef DELAY_OPT
/*
 * @brief Applies a delay effect to an input signal.
 *
 * @detailes This function applies a delay effect to the input signal using a pre-allocated buffer
 *           to store delayed samples. The following code is conditionally compiled only if DELAY_OPT is defined.
 *
 * @param input_signal Pointer to the array containing the input signal.
 * @param signal_length The number of samples in the input signal.
 * @param output_signal Pointer to the array where the output signal will be stored.
 *
 * @note The input_signal and output_signal arrays must be pre-allocated and
 *       have enough space to hold the necessary samples. The function does not perform
 *       memory allocation.
 *
 */
void delay(float *input_signal, float *output_signal, int length) {
	int readIndex = 0, writeIndex = 0;
	float inSample = 0.0;
	float delayedSample = 0.0;
	float outSample = 0.0;
	memset(delayBuffer, 0, sizeof(float) * DELAY_SAMPLES);
    float maxVal = 0.0;

	#pragma vector_for
    for (int i = 0; i < DELAY_SAMPLES && i < length; ++i) {
        output_signal[i] = input_signal[i];
        maxVal = fmaxf(maxVal, fabs(output_signal[i]));
    }

    for (int i = DELAY_SAMPLES; i < length; ++i) {
    	inSample = input_signal[i];
    	delayedSample = delayBuffer[readIndex];
    	outSample = inSample + (delayedSample * GAIN);

    	output_signal[i] = outSample;

    	delayBuffer[writeIndex] = inSample + (delayedSample * GAIN);
    	maxVal = fmaxf(maxVal, fabs(outSample));
    }
    readIndex = (readIndex + 1) % DELAY_SAMPLES;
    writeIndex = (writeIndex + 1) % DELAY_SAMPLES;

    if (maxVal > 0.0) {
		#pragma vector_for
        for (int i = 0; i < length; ++i) {
            output_signal[i] /= maxVal;
        }
    }
}


#endif

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
