/*****************************************************************************
 * AudioProcessing.h
 *****************************************************************************/

#ifndef __AUDIOPROCESSING_H__
#define __AUDIOPROCESSING_H__

/* Add your custom header content here */


#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <limits.h>
#include <time.h>
#include <cycle_count.h>
#include <def21489.h>
#include <sru21489.h>
#include <SYSREG.h>
#include <21489.h>
#include <string.h>
#include <builtins.h> // For SIMD and other intrinsic functions



#define LENGTH 33224

#define SAMPLE_RATE 11025
#define DELAY_MS 3
#define DELAY_SAMPLES ((int)(SAMPLE_RATE * (DELAY_MS / 1000.0)))
float delayBuffer[DELAY_SAMPLES + 1];
#define GAIN 0.5
#define PI 3.14159265358979323846

#define DAMP 0.05 // Damping factor
#define MINF 500.0 // Min center cutoff frequency of variable bandpass filter
#define MAXF 3000.0 // Max center cutoff frequency
#define WAHF 2000.0 // Wah frequency


//#define DELAY_FEEDBACK_NO_OPT || DELAY_FEEDBACK_PRAGMA

//#define TREMOLO_NO_OPT  || TREMOLO_OPT

//#define FLANGER_NO_OPT || FLANGER_PRAGMA  || FLANGER_FEEDBACK || FLANGER_FEEDBACK_UNROLL

//#define WAHWAH_NO_OPT || WAHWAH_PRAGMA




//#define DELAY_FEEDBACK_NO_OPT
#define TREMOLO_NO_OPT
#define FLANGER_NO_OPT
#define FLANGER_FEEDBACK
#define WAHWAH_NO_OPT




/*
//#define DELAY_FEEDBACK_PRAGMA
#define TREMOLO_OPT
#define FLANGER_PRAGMA
#define FLANGER_FEEDBACK
#define WAHWAH_PRAGMA
*/

//#define FLANGER_FEEDBACK_UNROLL


void mixSignals(float* signalA, float* signalB, float* mixedOutput, int length, float mixRatio);

#endif /* __AUDIOPROCESSING_H__ */
