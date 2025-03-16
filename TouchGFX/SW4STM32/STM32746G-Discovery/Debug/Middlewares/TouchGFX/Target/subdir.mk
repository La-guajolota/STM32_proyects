################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
E:/Sexto_sem/MCU_avanzados/TouchGFX/Gui/target/BoardConfiguration.cpp \
E:/Sexto_sem/MCU_avanzados/TouchGFX/Gui/target/GPIO.cpp \
E:/Sexto_sem/MCU_avanzados/TouchGFX/Gui/target/STM32F746GTouchController.cpp \
E:/Sexto_sem/MCU_avanzados/TouchGFX/Gui/target/STM32F7DMA.cpp \
E:/Sexto_sem/MCU_avanzados/TouchGFX/Gui/target/STM32F7HAL.cpp \
E:/Sexto_sem/MCU_avanzados/TouchGFX/Gui/target/STM32F7Instrumentation.cpp 

OBJS += \
./Middlewares/TouchGFX/Target/BoardConfiguration.o \
./Middlewares/TouchGFX/Target/GPIO.o \
./Middlewares/TouchGFX/Target/STM32F746GTouchController.o \
./Middlewares/TouchGFX/Target/STM32F7DMA.o \
./Middlewares/TouchGFX/Target/STM32F7HAL.o \
./Middlewares/TouchGFX/Target/STM32F7Instrumentation.o 

CPP_DEPS += \
./Middlewares/TouchGFX/Target/BoardConfiguration.d \
./Middlewares/TouchGFX/Target/GPIO.d \
./Middlewares/TouchGFX/Target/STM32F746GTouchController.d \
./Middlewares/TouchGFX/Target/STM32F7DMA.d \
./Middlewares/TouchGFX/Target/STM32F7HAL.d \
./Middlewares/TouchGFX/Target/STM32F7Instrumentation.d 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/TouchGFX/Target/BoardConfiguration.o: E:/Sexto_sem/MCU_avanzados/TouchGFX/Gui/target/BoardConfiguration.cpp Middlewares/TouchGFX/Target/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m7 -std=gnu++14 -g3 -DST -DSTM32F746xx -DUSE_BPP=16 -DUSE_FLOATING_POINT -c -I../../../Gui/gui/include -I../../../Gui/generated/fonts/include -I../../../Gui/generated/images/include -I../../../Gui/generated/texts/include -I../../../Middlewares/ST/TouchGFX/touchgfx/framework/include -I../../../Middlewares/Third_Party/FreeRTOS/Source/include -I../../../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I../../../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM7/r0p1 -I../../../Drivers/STM32F7xx_HAL_Driver/Inc -I../../../Drivers/BSP/STM32746G-Discovery -I../../../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../../../Gui/target -I../../../Core/Inc -I../../../Drivers/CMSIS/Include -Os -ffunction-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -Wno-strict-aliasing -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Middlewares/TouchGFX/Target/GPIO.o: E:/Sexto_sem/MCU_avanzados/TouchGFX/Gui/target/GPIO.cpp Middlewares/TouchGFX/Target/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m7 -std=gnu++14 -g3 -DST -DSTM32F746xx -DUSE_BPP=16 -DUSE_FLOATING_POINT -c -I../../../Gui/gui/include -I../../../Gui/generated/fonts/include -I../../../Gui/generated/images/include -I../../../Gui/generated/texts/include -I../../../Middlewares/ST/TouchGFX/touchgfx/framework/include -I../../../Middlewares/Third_Party/FreeRTOS/Source/include -I../../../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I../../../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM7/r0p1 -I../../../Drivers/STM32F7xx_HAL_Driver/Inc -I../../../Drivers/BSP/STM32746G-Discovery -I../../../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../../../Gui/target -I../../../Core/Inc -I../../../Drivers/CMSIS/Include -Os -ffunction-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -Wno-strict-aliasing -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Middlewares/TouchGFX/Target/STM32F746GTouchController.o: E:/Sexto_sem/MCU_avanzados/TouchGFX/Gui/target/STM32F746GTouchController.cpp Middlewares/TouchGFX/Target/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m7 -std=gnu++14 -g3 -DST -DSTM32F746xx -DUSE_BPP=16 -DUSE_FLOATING_POINT -c -I../../../Gui/gui/include -I../../../Gui/generated/fonts/include -I../../../Gui/generated/images/include -I../../../Gui/generated/texts/include -I../../../Middlewares/ST/TouchGFX/touchgfx/framework/include -I../../../Middlewares/Third_Party/FreeRTOS/Source/include -I../../../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I../../../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM7/r0p1 -I../../../Drivers/STM32F7xx_HAL_Driver/Inc -I../../../Drivers/BSP/STM32746G-Discovery -I../../../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../../../Gui/target -I../../../Core/Inc -I../../../Drivers/CMSIS/Include -Os -ffunction-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -Wno-strict-aliasing -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Middlewares/TouchGFX/Target/STM32F7DMA.o: E:/Sexto_sem/MCU_avanzados/TouchGFX/Gui/target/STM32F7DMA.cpp Middlewares/TouchGFX/Target/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m7 -std=gnu++14 -g3 -DST -DSTM32F746xx -DUSE_BPP=16 -DUSE_FLOATING_POINT -c -I../../../Gui/gui/include -I../../../Gui/generated/fonts/include -I../../../Gui/generated/images/include -I../../../Gui/generated/texts/include -I../../../Middlewares/ST/TouchGFX/touchgfx/framework/include -I../../../Middlewares/Third_Party/FreeRTOS/Source/include -I../../../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I../../../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM7/r0p1 -I../../../Drivers/STM32F7xx_HAL_Driver/Inc -I../../../Drivers/BSP/STM32746G-Discovery -I../../../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../../../Gui/target -I../../../Core/Inc -I../../../Drivers/CMSIS/Include -Os -ffunction-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -Wno-strict-aliasing -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Middlewares/TouchGFX/Target/STM32F7HAL.o: E:/Sexto_sem/MCU_avanzados/TouchGFX/Gui/target/STM32F7HAL.cpp Middlewares/TouchGFX/Target/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m7 -std=gnu++14 -g3 -DST -DSTM32F746xx -DUSE_BPP=16 -DUSE_FLOATING_POINT -c -I../../../Gui/gui/include -I../../../Gui/generated/fonts/include -I../../../Gui/generated/images/include -I../../../Gui/generated/texts/include -I../../../Middlewares/ST/TouchGFX/touchgfx/framework/include -I../../../Middlewares/Third_Party/FreeRTOS/Source/include -I../../../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I../../../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM7/r0p1 -I../../../Drivers/STM32F7xx_HAL_Driver/Inc -I../../../Drivers/BSP/STM32746G-Discovery -I../../../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../../../Gui/target -I../../../Core/Inc -I../../../Drivers/CMSIS/Include -Os -ffunction-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -Wno-strict-aliasing -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Middlewares/TouchGFX/Target/STM32F7Instrumentation.o: E:/Sexto_sem/MCU_avanzados/TouchGFX/Gui/target/STM32F7Instrumentation.cpp Middlewares/TouchGFX/Target/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m7 -std=gnu++14 -g3 -DST -DSTM32F746xx -DUSE_BPP=16 -DUSE_FLOATING_POINT -c -I../../../Gui/gui/include -I../../../Gui/generated/fonts/include -I../../../Gui/generated/images/include -I../../../Gui/generated/texts/include -I../../../Middlewares/ST/TouchGFX/touchgfx/framework/include -I../../../Middlewares/Third_Party/FreeRTOS/Source/include -I../../../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I../../../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM7/r0p1 -I../../../Drivers/STM32F7xx_HAL_Driver/Inc -I../../../Drivers/BSP/STM32746G-Discovery -I../../../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../../../Gui/target -I../../../Core/Inc -I../../../Drivers/CMSIS/Include -Os -ffunction-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -Wno-strict-aliasing -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Middlewares-2f-TouchGFX-2f-Target

clean-Middlewares-2f-TouchGFX-2f-Target:
	-$(RM) ./Middlewares/TouchGFX/Target/BoardConfiguration.cyclo ./Middlewares/TouchGFX/Target/BoardConfiguration.d ./Middlewares/TouchGFX/Target/BoardConfiguration.o ./Middlewares/TouchGFX/Target/BoardConfiguration.su ./Middlewares/TouchGFX/Target/GPIO.cyclo ./Middlewares/TouchGFX/Target/GPIO.d ./Middlewares/TouchGFX/Target/GPIO.o ./Middlewares/TouchGFX/Target/GPIO.su ./Middlewares/TouchGFX/Target/STM32F746GTouchController.cyclo ./Middlewares/TouchGFX/Target/STM32F746GTouchController.d ./Middlewares/TouchGFX/Target/STM32F746GTouchController.o ./Middlewares/TouchGFX/Target/STM32F746GTouchController.su ./Middlewares/TouchGFX/Target/STM32F7DMA.cyclo ./Middlewares/TouchGFX/Target/STM32F7DMA.d ./Middlewares/TouchGFX/Target/STM32F7DMA.o ./Middlewares/TouchGFX/Target/STM32F7DMA.su ./Middlewares/TouchGFX/Target/STM32F7HAL.cyclo ./Middlewares/TouchGFX/Target/STM32F7HAL.d ./Middlewares/TouchGFX/Target/STM32F7HAL.o ./Middlewares/TouchGFX/Target/STM32F7HAL.su ./Middlewares/TouchGFX/Target/STM32F7Instrumentation.cyclo ./Middlewares/TouchGFX/Target/STM32F7Instrumentation.d ./Middlewares/TouchGFX/Target/STM32F7Instrumentation.o ./Middlewares/TouchGFX/Target/STM32F7Instrumentation.su

.PHONY: clean-Middlewares-2f-TouchGFX-2f-Target

