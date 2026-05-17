################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
E:/Sexto_sem/MCU_avanzados/TouchGFX/Middlewares/Third_Party/FreeRTOS/Source/portable/MemMang/heap_4.c 

C_DEPS += \
./Middlewares/FreeRTOS/MemMgr/heap_4.d 

OBJS += \
./Middlewares/FreeRTOS/MemMgr/heap_4.o 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/FreeRTOS/MemMgr/heap_4.o: E:/Sexto_sem/MCU_avanzados/TouchGFX/Middlewares/Third_Party/FreeRTOS/Source/portable/MemMang/heap_4.c Middlewares/FreeRTOS/MemMgr/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DST -DSTM32F746xx -DUSE_BPP=16 -DUSE_FLOATING_POINT -c -I../../../Gui/gui/include -I../../../Gui/generated/fonts/include -I../../../Gui/generated/images/include -I../../../Gui/generated/texts/include -I../../../Middlewares/ST/TouchGFX/touchgfx/framework/include -I../../../Middlewares/Third_Party/FreeRTOS/Source/include -I../../../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I../../../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM7/r0p1 -I../../../Drivers/STM32F7xx_HAL_Driver/Inc -I../../../Drivers/BSP/STM32746G-Discovery -I../../../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../../../Gui/target -I../../../Core/Inc -I../../../Drivers/CMSIS/Include -Os -ffunction-sections -Wall -Wno-strict-aliasing -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Middlewares-2f-FreeRTOS-2f-MemMgr

clean-Middlewares-2f-FreeRTOS-2f-MemMgr:
	-$(RM) ./Middlewares/FreeRTOS/MemMgr/heap_4.cyclo ./Middlewares/FreeRTOS/MemMgr/heap_4.d ./Middlewares/FreeRTOS/MemMgr/heap_4.o ./Middlewares/FreeRTOS/MemMgr/heap_4.su

.PHONY: clean-Middlewares-2f-FreeRTOS-2f-MemMgr

