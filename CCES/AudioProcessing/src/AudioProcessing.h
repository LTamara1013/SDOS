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




//#define DELAY_NO_OPT || DELAY_CODE_OPT || DELAY_OPT || DELAY_PRAGMA_OPT DELAY_FEEDBACK_NO_OPT

//#define TREMOLO_NO_OPT  || TREMOLO_PRAGMA_OPT || TREMOLO_OPT

#define DELAY_FEEDBACK_NO_OPT

#endif /* __AUDIOPROCESSING_H__ */
