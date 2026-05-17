################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
E:/Sexto_sem/MCU_avanzados/TouchGFX/Middlewares/ST/TouchGFX/touchgfx/os/OSWrappers.cpp 

OBJS += \
./Middlewares/TouchGFX/OS/OSWrappers.o 

CPP_DEPS += \
./Middlewares/TouchGFX/OS/OSWrappers.d 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/TouchGFX/OS/OSWrappers.o: E:/Sexto_sem/MCU_avanzados/TouchGFX/Middlewares/ST/TouchGFX/touchgfx/os/OSWrappers.cpp Middlewares/TouchGFX/OS/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m7 -std=gnu++14 -g3 -DST -DSTM32F746xx -DUSE_BPP=16 -DUSE_FLOATING_POINT -c -I../../../Gui/gui/include -I../../../Gui/generated/fonts/include -I../../../Gui/generated/images/include -I../../../Gui/generated/texts/include -I../../../Middlewares/ST/TouchGFX/touchgfx/framework/include -I../../../Middlewares/Third_Party/FreeRTOS/Source/include -I../../../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I../../../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM7/r0p1 -I../../../Drivers/STM32F7xx_HAL_Driver/Inc -I../../../Drivers/BSP/STM32746G-Discovery -I../../../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../../../Gui/target -I../../../Core/Inc -I../../../Drivers/CMSIS/Include -Os -ffunction-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -Wno-strict-aliasing -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Middlewares-2f-TouchGFX-2f-OS

clean-Middlewares-2f-TouchGFX-2f-OS:
	-$(RM) ./Middlewares/TouchGFX/OS/OSWrappers.cyclo ./Middlewares/TouchGFX/OS/OSWrappers.d ./Middlewares/TouchGFX/OS/OSWrappers.o ./Middlewares/TouchGFX/OS/OSWrappers.su

.PHONY: clean-Middlewares-2f-TouchGFX-2f-OS

