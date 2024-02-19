################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/AudioProcessing.c \
../src/Delay.c \
../src/Tremolo.c \
../src/Write.c 

SRC_OBJS += \
./src/AudioProcessing.doj \
./src/Delay.doj \
./src/Tremolo.doj \
./src/Write.doj 

C_DEPS += \
./src/AudioProcessing.d \
./src/Delay.d \
./src/Tremolo.d \
./src/Write.d 


# Each subdirectory must supply rules for building sources it contributes
src/AudioProcessing.doj: ../src/AudioProcessing.c
	@echo 'Building file: $<'
	@echo 'Invoking: CrossCore SHARC C/C++ Compiler'
	cc21k -c -file-attr ProjectName="AudioProcessing" -proc ADSP-21489 -flags-compiler --no_wrap_diagnostics -si-revision 0.2 -O -Ov100 -g -save-temps -path-output ./$(@D) -DCORE0 -D_DEBUG @includes-7339dddc85bb3273f20f37ad79910aed.txt -structs-do-not-overlap -no-const-strings -multiline -warn-protos -Wremarks -double-size-32 -swc -gnu-style-dependencies -MD -Mo "src/AudioProcessing.d" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/Delay.doj: ../src/Delay.c
	@echo 'Building file: $<'
	@echo 'Invoking: CrossCore SHARC C/C++ Compiler'
	cc21k -c -file-attr ProjectName="AudioProcessing" -proc ADSP-21489 -flags-compiler --no_wrap_diagnostics -si-revision 0.2 -O -Ov100 -g -save-temps -path-output ./$(@D) -DCORE0 -D_DEBUG @includes-7339dddc85bb3273f20f37ad79910aed.txt -structs-do-not-overlap -no-const-strings -multiline -warn-protos -Wremarks -double-size-32 -swc -gnu-style-dependencies -MD -Mo "src/Delay.d" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/Tremolo.doj: ../src/Tremolo.c
	@echo 'Building file: $<'
	@echo 'Invoking: CrossCore SHARC C/C++ Compiler'
	cc21k -c -file-attr ProjectName="AudioProcessing" -proc ADSP-21489 -flags-compiler --no_wrap_diagnostics -si-revision 0.2 -O -Ov100 -g -save-temps -path-output ./$(@D) -DCORE0 -D_DEBUG @includes-7339dddc85bb3273f20f37ad79910aed.txt -structs-do-not-overlap -no-const-strings -multiline -warn-protos -Wremarks -double-size-32 -swc -gnu-style-dependencies -MD -Mo "src/Tremolo.d" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/Write.doj: ../src/Write.c
	@echo 'Building file: $<'
	@echo 'Invoking: CrossCore SHARC C/C++ Compiler'
	cc21k -c -file-attr ProjectName="AudioProcessing" -proc ADSP-21489 -flags-compiler --no_wrap_diagnostics -si-revision 0.2 -O -Ov100 -g -save-temps -path-output ./$(@D) -DCORE0 -D_DEBUG @includes-7339dddc85bb3273f20f37ad79910aed.txt -structs-do-not-overlap -no-const-strings -multiline -warn-protos -Wremarks -double-size-32 -swc -gnu-style-dependencies -MD -Mo "src/Write.d" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


