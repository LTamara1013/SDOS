/*****************************************************************************
 * Flanger.h
 *****************************************************************************/

#ifndef FLANGER_H_
#define FLANGER_H_


#if defined FLANGER_NO_OPT || defined FLANGER_PRAGMA
/*
 * @brief Applies a flanger effect to an input signal.
 *
 * @details The function uses a pre-allocated circular buffer to store
 *          delayed samples and modulates the delay time based on the LFO's current value.
 *          The output signal is normalized to prevent clipping.
 *
 * @param input_signal Pointer to the array containing the input signal.
 * @param output_signal Pointer to the array where the output signal will be stored.
 * @param signal_length The number of samples in the input signal and output signal.
 * @param Flfo The frequency of the LFO controlling the delay time.
 * @param gain The gain applied to the delayed signal before it is added to the original signal.
 *
 * @note The input_signal and output_signal arrays must be pre-allocated and
 *       have enough space to hold the necessary samples. The function does not perform
 *       memory allocation.
 *
 */
void flanger(float* input_signal, float* output_signal, int signal_length, float Flfo, float gain);
#endif

#if defined FLANGER_FEEDBACK  || defined FLANGER_FEEDBACK_UNROLL

/*
 * @brief Applies a flanger effect with feedback to an input audio signal.
 *
 * @details This function modulates an input signal's delay time using a Low Frequency Oscillator (LFO)
 *          to create a flanger effect. It incorporates feedback and feedforward gains to control
 *          the intensity of the effect. The function utilizes a static circular buffer to
 *          store delayed samples, allowing for the modulation of delay time based on the LFO's current value.
 *          The output signal is normalized to prevent clipping.
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

void flanger_with_feedback(float* input_signal, float* output_signal,int signal_length, float Flfo, float feedback_gain, float feedforward_gain);
#endif

#endif /* FLANGER_H_ */
