/*****************************************************************************
 * WahWah.c
 *****************************************************************************/
#include "WahWah.h"
#include "AudioProcessing.h"
#include "Normalization.h"

#ifdef WAHWAH_NO_OPT
/*
 * @brief Implements a wahwah effect on an input audio signal.
 *
 * @details This function applies a wahwah effect, which is a type of spectral filter that sweeps its peak response
 *          frequency up and down the frequency spectrum. The following code is conditionally compiled only if WAHWAH_NO_OPT is defined.
 *
 * @param input_signal Pointer to the array containing the input signal.
 * @param output_signal Pointer to the array where the output signal will be stored.
 * @param length The number of samples in the input signal.
 *
 * @note The input and output arrays must be pre-allocated with sufficient space to hold all samples. The function
 *       does not perform memory allocation.
 *
 */
void wahwah(float *input_signal, float *output_signal, int length) {
		float Q1 = 2 * DAMP;
		float Fc = MINF;
		float F1 =(float) 2 * sinf((PI * Fc) / SAMPLE_RATE);
		float yl = F1 * input_signal[0];
		float yb = output_signal[0] = F1 * input_signal[0];
		float delta = WAHF / SAMPLE_RATE;
		float maxy = fabs(output_signal[0]);

	    for (int i = 1; i < length; i++) {
	        if (Fc + delta > MAXF || Fc + delta < MINF) {
	            delta = -delta;
	        }
	        Fc += delta;
	        F1 = 2 * sinf((PI * Fc) / SAMPLE_RATE);
	        float yh = input_signal[i] - yl - Q1 * yb;
	        output_signal[i] = F1 * yh + yb;
	        yl = F1 * output_signal[i] + yl;
	        yb = output_signal[i];
	        if (fabs(output_signal[i]) > maxy) {
	            maxy = fabs(output_signal[i]);
	        }
	    }

	    // Normalize the output
	    for (int i = 0; i < length; i++) {
	        output_signal[i] /= maxy;
	    }
}
#endif

#ifdef WAHWAH_PRAGMA
/*
 * @brief Implements a wahwah effect on an input audio signal.
 *
 * @details This function applies a wahwah effect, which is a type of spectral filter that sweeps its peak response
 *          frequency up and down the frequency spectrum. The following code is conditionally compiled only if WAHWAH_PRAGMA is defined.
 *
 * @param input_signal Pointer to the array containing the input signal.
 * @param output_signal Pointer to the array where the output signal will be stored.
 * @param length The number of samples in the input signal.
 *
 * @note The input and output arrays must be pre-allocated with sufficient space to hold all samples. The function
 *       does not perform memory allocation.
 *
 */
void wahwah(float *input_signal, float *output_signal, int length) {
		float Q1 = 2 * DAMP;
		float Fc = MINF;
		float F1 =(float) 2 * sinf((PI * Fc) / SAMPLE_RATE);
		float yl = F1 * input_signal[0];
		float yb = output_signal[0] = F1 * input_signal[0];
		float delta = WAHF / SAMPLE_RATE;
		float maxy = fabs(output_signal[0]);
		#pragma vector_for
	    for (int i = 1; i < length; i++) {
	        if (Fc + delta > MAXF || Fc + delta < MINF) {
	            delta = -delta;
	        }
	        Fc += delta;
	        F1 = 2 * sinf((PI * Fc) / SAMPLE_RATE);
	        float yh = input_signal[i] - yl - Q1 * yb;
	        output_signal[i] = F1 * yh + yb;
	        yl = F1 * output_signal[i] + yl;
	        yb = output_signal[i];
	        if (fabs(output_signal[i]) > maxy) {
	            maxy = fabs(output_signal[i]);
	        }
	    }

	    // Normalize the output
		#pragma vector_for
	    for (int i = 0; i < length; i++) {
	        output_signal[i] /= maxy;
	    }
}
#endif


