/*****************************************************************************
 * Flanger.c
 *****************************************************************************/
#include "Flanger.h"
#include "AudioProcessing.h"
#include "Normalization.h"

#ifdef FLANGER_NO_OPT
/*
 * @brief Applies a flanger effect to an input signal.
 *
 * @details The function uses a pre-allocated circular buffer to store
 *          delayed samples and modulates the delay time based on the LFO's current value. The output is then normalized
 *          to prevent clipping. This code is conditionally compiled only if FLANGER_NO_OPT is defined.
 *
 * @param input_signal Pointer to the array containing the input signal.
 * @param output_signal Pointer to the array where the output signal will be stored.
 * @param signal_length The number of samples in the input signal.
 * @param Flfo The frequency of the LFO controlling the delay time.
 * @param gain The gain applied to the delayed signal before it is added to the original signal.
 *
 * @note The input_signal and output_signal arrays must be pre-allocated and
 *       have enough space to hold the necessary samples. The function does not perform
 *       memory allocation.
 *
 */
void flanger(float* input_signal, float* output_signal, int signal_length, float Flfo, float gain) {
    const float omega = 2 * PI * Flfo / SAMPLE_RATE;

    for (int i = 0; i < signal_length; i++) {
        float d = DELAY_SAMPLES * 0.5 * (1 + sinf(i * omega));
        int d_int = (int)d;
        float frac = d - d_int;

        if (i - d_int - 1 >= 0) {

            float delayed_sample = input_signal[i - d_int] * (1 - frac) + input_signal[i - d_int - 1] * frac;

            output_signal[i] = input_signal[i] + (gain * delayed_sample);
        } else {
            output_signal[i] = input_signal[i];
        }
    }
    normalization(output_signal,signal_length);
}
#endif


#ifdef FLANGER_PRAGMA

/*
 * @brief Applies a flanger effect to an input signal.
 *
 * @details The function uses a pre-allocated circular buffer to store
 *          delayed samples and modulates the delay time based on the LFO's current value. The output is then normalized
 *          to prevent clipping. This code is conditionally compiled only if FLANGER_PRAGMA is defined.
 *
 * @param input_signal Pointer to the array containing the input signal.
 * @param output_signal Pointer to the array where the output signal will be stored.
 * @param signal_length The number of samples in the input signal.
 * @param Flfo The frequency of the LFO controlling the delay time.
 * @param gain The gain applied to the delayed signal before it is added to the original signal.
 *
 * @note The input_signal and output_signal arrays must be pre-allocated and
 *       have enough space to hold the necessary samples. The function does not perform
 *       memory allocation.
 *
 */

void flanger(float* input_signal, float* output_signal, int signal_length, float Flfo, float gain) {
    const float omega = 2 * PI * Flfo / SAMPLE_RATE;
	#pragma vector_for
    for (int i = 0; i < signal_length; i++) {
        float d = DELAY_SAMPLES * 0.5 * (1 + sin(i * omega));
        int d_int = (int)d;
        float frac = d - d_int;

        if (i - d_int - 1 >= 0) {

            float delayed_sample = input_signal[i - d_int] * (1 - frac) + input_signal[i - d_int - 1] * frac;

            output_signal[i] = input_signal[i] + (gain * delayed_sample);
        } else {
            output_signal[i] = input_signal[i];
        }
    }

    normalization(output_signal,signal_length);
}
#endif


#ifdef FLANGER_FEEDBACK
/*
 * @brief Applies a flanger effect with feedback to an input audio signal.
 *
 * @details This function modulates an input signal's delay time using a Low Frequency Oscillator (LFO)
 *          to create a flanger effect. It incorporates feedback and feedforward gains to control
 *          the intensity of the effect. The function utilizes a static circular buffer to
 *          store delayed samples, allowing for the modulation of delay time based on the LFO's current value.
 *          The output signal is normalized to prevent clipping.
 *          This code is conditionally compiled only if FLANGER_FEEDBACK is defined.
 *
 * @param input_signal Pointer to the float array containing the input audio signal.
 * @param output_signal Pointer to the float array where the processed audio signal with the flanger effect will be stored.
 * @param signal_length The number of samples in the input and output audio signals.
 * @param Flfo The frequency of the LFO (in Hz) that controls the modulation of the delay time.
 * @param feedback_gain The gain applied to the delayed signal that is fed back into the input of the delay line,
 *                      affecting the intensity and resonance of the flanger effect.
 * @param feedforward_gain The gain applied to the delayed signal before it is mixed with the original input signal,
 *                         controlling the balance between the original and delayed signals.
 *
 * @note The input_signal and output_signal arrays must be pre-allocated and
 *       have enough space to hold the necessary samples. The function does not perform
 *       memory allocation.
 *
 */
void flanger_with_feedback(float* input_signal, float* output_signal,int signal_length, float Flfo, float feedback_gain, float feedforward_gain) {
    float omega = (2 * PI * Flfo) / SAMPLE_RATE;
	#pragma vector_for
    for (int i = 0; i < signal_length; i++) {
        float current_delay = (1 + sinf(omega * i)) / 2 * DELAY_SAMPLES;
        int delay_index = (int)current_delay;

        int buffer_index = i % (DELAY_SAMPLES + 1);
        float delayed_sample = delayBuffer[buffer_index];

        delayBuffer[buffer_index] = input_signal[i] + feedback_gain * delayed_sample;

        output_signal[i] = input_signal[i] + feedforward_gain * delayed_sample;
    }

    normalization(output_signal,signal_length);

}
#endif

#ifdef FLANGER_FEEDBACK_UNROLL
/*
 * @brief Applies a flanger effect with feedback to an input audio signal.
 *
 * @details This function modulates an input signal's delay time using a Low Frequency Oscillator (LFO)
 *          to create a flanger effect. It incorporates feedback and feedforward gains to control
 *          the intensity of the effect. The function utilizes a static circular buffer to
 *          store delayed samples, allowing for the modulation of delay time based on the LFO's current value.
 *          The output signal is normalized to prevent clipping.
 *          This code is conditionally compiled only if FLANGER_FEEDBACK_UNROLL is defined.
 *
 * @param input_signal Pointer to the float array containing the input audio signal.
 * @param output_signal Pointer to the float array where the processed audio signal with the flanger effect will be stored.
 * @param signal_length The number of samples in the input and output audio signals.
 * @param Flfo The frequency of the LFO (in Hz) that controls the modulation of the delay time.
 * @param feedback_gain The gain applied to the delayed signal that is fed back into the input of the delay line,
 *                      affecting the intensity and resonance of the flanger effect.
 * @param feedforward_gain The gain applied to the delayed signal before it is mixed with the original input signal,
 *                         controlling the balance between the original and delayed signals.
 *
 * @note The input_signal and output_signal arrays must be pre-allocated and
 *       have enough space to hold the necessary samples. The function does not perform
 *       memory allocation.
 *
 */
void flanger_with_feedback(float* input_signal, float* output_signal,int signal_length, float Flfo, float feedback_gain, float feedforward_gain) {
    float omega = (2 * PI * Flfo) / SAMPLE_RATE;
    for (int i = 0; i <= signal_length - 4; i += 4) {
        for (int j = 0; j < 4; ++j) {
            int idx = i + j; // Calculate the actual index for each unrolled iteration
            float current_delay = (1 + sinf(omega * idx)) / 2 * DELAY_SAMPLES;
            int buffer_index = idx % (DELAY_SAMPLES + 1);
            float delayed_sample = delayBuffer[buffer_index];

            delayBuffer[buffer_index] = input_signal[idx] + feedback_gain * delayed_sample;
            output_signal[idx] = input_signal[idx] + feedforward_gain * delayed_sample;
        }
    }

    //if signal_length is not a multiple of 4
    for (int i = signal_length - (signal_length % 4); i < signal_length; ++i) {
        float current_delay = (1 + sinf(omega * i)) / 2 * DELAY_SAMPLES;
        int buffer_index = i % (DELAY_SAMPLES + 1);
        float delayed_sample = delayBuffer[buffer_index];

        delayBuffer[buffer_index] = input_signal[i] + feedback_gain * delayed_sample;
        output_signal[i] = input_signal[i] + feedforward_gain * delayed_sample;
    }

    normalization(output_signal,signal_length);

}

#endif

