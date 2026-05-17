################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
E:/Sexto_sem/MCU_avanzados/TouchGFX/Drivers/BSP/STM32746G-Discovery/stm32746g_discovery.c \
E:/Sexto_sem/MCU_avanzados/TouchGFX/Drivers/BSP/STM32746G-Discovery/stm32746g_discovery_audio.c \
E:/Sexto_sem/MCU_avanzados/TouchGFX/Drivers/BSP/STM32746G-Discovery/stm32746g_discovery_eeprom.c \
E:/Sexto_sem/MCU_avanzados/TouchGFX/Drivers/BSP/STM32746G-Discovery/stm32746g_discovery_qspi.c \
E:/Sexto_sem/MCU_avanzados/TouchGFX/Drivers/BSP/STM32746G-Discovery/stm32746g_discovery_sd.c \
E:/Sexto_sem/MCU_avanzados/TouchGFX/Drivers/BSP/STM32746G-Discovery/stm32746g_discovery_sdram.c \
E:/Sexto_sem/MCU_avanzados/TouchGFX/Drivers/BSP/STM32746G-Discovery/stm32746g_discovery_ts.c 

C_DEPS += \
./Drivers/BSP/stm32746g_discovery.d \
./Drivers/BSP/stm32746g_discovery_audio.d \
./Drivers/BSP/stm32746g_discovery_eeprom.d \
./Drivers/BSP/stm32746g_discovery_qspi.d \
./Drivers/BSP/stm32746g_discovery_sd.d \
./Drivers/BSP/stm32746g_discovery_sdram.d \
./Drivers/BSP/stm32746g_discovery_ts.d 

OBJS += \
./Drivers/BSP/stm32746g_discovery.o \
./Drivers/BSP/stm32746g_discovery_audio.o \
./Drivers/BSP/stm32746g_discovery_eeprom.o \
./Drivers/BSP/stm32746g_discovery_qspi.o \
./Drivers/BSP/stm32746g_discovery_sd.o \
./Drivers/BSP/stm32746g_discovery_sdram.o \
./Drivers/BSP/stm32746g_discovery_ts.o 


# Each subdirectory must supply rules for building sources it contributes
Drivers/BSP/stm32746g_discovery.o: E:/Sexto_sem/MCU_avanzados/TouchGFX/Drivers/BSP/STM32746G-Discovery/stm32746g_discovery.c Drivers/BSP/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DST -DSTM32F746xx -DUSE_BPP=16 -DUSE_FLOATING_POINT -c -I../../../Gui/gui/include -I../../../Gui/generated/fonts/include -I../../../Gui/generated/images/include -I../../../Gui/generated/texts/include -I../../../Middlewares/ST/TouchGFX/touchgfx/framework/include -I../../../Middlewares/Third_Party/FreeRTOS/Source/include -I../../../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I../../../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM7/r0p1 -I../../../Drivers/STM32F7xx_HAL_Driver/Inc -I../../../Drivers/BSP/STM32746G-Discovery -I../../../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../../../Gui/target -I../../../Core/Inc -I../../../Drivers/CMSIS/Include -Os -ffunction-sections -Wall -Wno-strict-aliasing -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/BSP/stm32746g_discovery_audio.o: E:/Sexto_sem/MCU_avanzados/TouchGFX/Drivers/BSP/STM32746G-Discovery/stm32746g_discovery_audio.c Drivers/BSP/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DST -DSTM32F746xx -DUSE_BPP=16 -DUSE_FLOATING_POINT -c -I../../../Gui/gui/include -I../../../Gui/generated/fonts/include -I../../../Gui/generated/images/include -I../../../Gui/generated/texts/include -I../../../Middlewares/ST/TouchGFX/touchgfx/framework/include -I../../../Middlewares/Third_Party/FreeRTOS/Source/include -I../../../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I../../../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM7/r0p1 -I../../../Drivers/STM32F7xx_HAL_Driver/Inc -I../../../Drivers/BSP/STM32746G-Discovery -I../../../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../../../Gui/target -I../../../Core/Inc -I../../../Drivers/CMSIS/Include -Os -ffunction-sections -Wall -Wno-strict-aliasing -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/BSP/stm32746g_discovery_eeprom.o: E:/Sexto_sem/MCU_avanzados/TouchGFX/Drivers/BSP/STM32746G-Discovery/stm32746g_discovery_eeprom.c Drivers/BSP/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DST -DSTM32F746xx -DUSE_BPP=16 -DUSE_FLOATING_POINT -c -I../../../Gui/gui/include -I../../../Gui/generated/fonts/include -I../../../Gui/generated/images/include -I../../../Gui/generated/texts/include -I../../../Middlewares/ST/TouchGFX/touchgfx/framework/include -I../../../Middlewares/Third_Party/FreeRTOS/Source/include -I../../../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I../../../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM7/r0p1 -I../../../Drivers/STM32F7xx_HAL_Driver/Inc -I../../../Drivers/BSP/STM32746G-Discovery -I../../../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../../../Gui/target -I../../../Core/Inc -I../../../Drivers/CMSIS/Include -Os -ffunction-sections -Wall -Wno-strict-aliasing -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/BSP/stm32746g_discovery_qspi.o: E:/Sexto_sem/MCU_avanzados/TouchGFX/Drivers/BSP/STM32746G-Discovery/stm32746g_discovery_qspi.c Drivers/BSP/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DST -DSTM32F746xx -DUSE_BPP=16 -DUSE_FLOATING_POINT -c -I../../../Gui/gui/include -I../../../Gui/generated/fonts/include -I../../../Gui/generated/images/include -I../../../Gui/generated/texts/include -I../../../Middlewares/ST/TouchGFX/touchgfx/framework/include -I../../../Middlewares/Third_Party/FreeRTOS/Source/include -I../../../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I../../../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM7/r0p1 -I../../../Drivers/STM32F7xx_HAL_Driver/Inc -I../../../Drivers/BSP/STM32746G-Discovery -I../../../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../../../Gui/target -I../../../Core/Inc -I../../../Drivers/CMSIS/Include -Os -ffunction-sections -Wall -Wno-strict-aliasing -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/BSP/stm32746g_discovery_sd.o: E:/Sexto_sem/MCU_avanzados/TouchGFX/Drivers/BSP/STM32746G-Discovery/stm32746g_discovery_sd.c Drivers/BSP/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DST -DSTM32F746xx -DUSE_BPP=16 -DUSE_FLOATING_POINT -c -I../../../Gui/gui/include -I../../../Gui/generated/fonts/include -I../../../Gui/generated/images/include -I../../../Gui/generated/texts/include -I../../../Middlewares/ST/TouchGFX/touchgfx/framework/include -I../../../Middlewares/Third_Party/FreeRTOS/Source/include -I../../../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I../../../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM7/r0p1 -I../../../Drivers/STM32F7xx_HAL_Driver/Inc -I../../../Drivers/BSP/STM32746G-Discovery -I../../../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../../../Gui/target -I../../../Core/Inc -I../../../Drivers/CMSIS/Include -Os -ffunction-sections -Wall -Wno-strict-aliasing -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/BSP/stm32746g_discovery_sdram.o: E:/Sexto_sem/MCU_avanzados/TouchGFX/Drivers/BSP/STM32746G-Discovery/stm32746g_discovery_sdram.c Drivers/BSP/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DST -DSTM32F746xx -DUSE_BPP=16 -DUSE_FLOATING_POINT -c -I../../../Gui/gui/include -I../../../Gui/generated/fonts/include -I../../../Gui/generated/images/include -I../../../Gui/generated/texts/include -I../../../Middlewares/ST/TouchGFX/touchgfx/framework/include -I../../../Middlewares/Third_Party/FreeRTOS/Source/include -I../../../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I../../../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM7/r0p1 -I../../../Drivers/STM32F7xx_HAL_Driver/Inc -I../../../Drivers/BSP/STM32746G-Discovery -I../../../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../../../Gui/target -I../../../Core/Inc -I../../../Drivers/CMSIS/Include -Os -ffunction-sections -Wall -Wno-strict-aliasing -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/BSP/stm32746g_discovery_ts.o: E:/Sexto_sem/MCU_avanzados/TouchGFX/Drivers/BSP/STM32746G-Discovery/stm32746g_discovery_ts.c Drivers/BSP/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DST -DSTM32F746xx -DUSE_BPP=16 -DUSE_FLOATING_POINT -c -I../../../Gui/gui/include -I../../../Gui/generated/fonts/include -I../../../Gui/generated/images/include -I../../../Gui/generated/texts/include -I../../../Middlewares/ST/TouchGFX/touchgfx/framework/include -I../../../Middlewares/Third_Party/FreeRTOS/Source/include -I../../../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I../../../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM7/r0p1 -I../../../Drivers/STM32F7xx_HAL_Driver/Inc -I../../../Drivers/BSP/STM32746G-Discovery -I../../../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../../../Gui/target -I../../../Core/Inc -I../../../Drivers/CMSIS/Include -Os -ffunction-sections -Wall -Wno-strict-aliasing -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Drivers-2f-BSP

clean-Drivers-2f-BSP:
	-$(RM) ./Drivers/BSP/stm32746g_discovery.cyclo ./Drivers/BSP/stm32746g_discovery.d ./Drivers/BSP/stm32746g_discovery.o ./Drivers/BSP/stm32746g_discovery.su ./Drivers/BSP/stm32746g_discovery_audio.cyclo ./Drivers/BSP/stm32746g_discovery_audio.d ./Drivers/BSP/stm32746g_discovery_audio.o ./Drivers/BSP/stm32746g_discovery_audio.su ./Drivers/BSP/stm32746g_discovery_eeprom.cyclo ./Drivers/BSP/stm32746g_discovery_eeprom.d ./Drivers/BSP/stm32746g_discovery_eeprom.o ./Drivers/BSP/stm32746g_discovery_eeprom.su ./Drivers/BSP/stm32746g_discovery_qspi.cyclo ./Drivers/BSP/stm32746g_discovery_qspi.d ./Drivers/BSP/stm32746g_discovery_qspi.o ./Drivers/BSP/stm32746g_discovery_qspi.su ./Drivers/BSP/stm32746g_discovery_sd.cyclo ./Drivers/BSP/stm32746g_discovery_sd.d ./Drivers/BSP/stm32746g_discovery_sd.o ./Drivers/BSP/stm32746g_discovery_sd.su ./Drivers/BSP/stm32746g_discovery_sdram.cyclo ./Drivers/BSP/stm32746g_discovery_sdram.d ./Drivers/BSP/stm32746g_discovery_sdram.o ./Drivers/BSP/stm32746g_discovery_sdram.su ./Drivers/BSP/stm32746g_discovery_ts.cyclo ./Drivers/BSP/stm32746g_discovery_ts.d ./Drivers/BSP/stm32746g_discovery_ts.o ./Drivers/BSP/stm32746g_discovery_ts.su

.PHONY: clean-Drivers-2f-BSP

