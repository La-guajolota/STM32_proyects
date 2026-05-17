################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
E:/Sexto_sem/MCU_avanzados/BSP/Drivers/BSP/Components/ft5336/ft5336.c \
E:/Sexto_sem/MCU_avanzados/BSP/Drivers/BSP/Components/ov9655/ov9655.c \
E:/Sexto_sem/MCU_avanzados/BSP/Drivers/BSP/Components/wm8994/wm8994.c 

OBJS += \
./Drivers/BSP/Components/ft5336.o \
./Drivers/BSP/Components/ov9655.o \
./Drivers/BSP/Components/wm8994.o 

C_DEPS += \
./Drivers/BSP/Components/ft5336.d \
./Drivers/BSP/Components/ov9655.d \
./Drivers/BSP/Components/wm8994.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/BSP/Components/ft5336.o: E:/Sexto_sem/MCU_avanzados/BSP/Drivers/BSP/Components/ft5336/ft5336.c Drivers/BSP/Components/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32F746xx -DUSE_STM32746G_DISCO -DUSE_IOEXPANDER -c -I../../../Inc -I../../../Drivers/CMSIS/Include -I../../../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../../../Drivers/STM32F7xx_HAL_Driver/Inc -I../../../Drivers/BSP/STM32746G-Discovery -I../../../Drivers/BSP/Components/Common -I../../../Utilities/Log -I../../../Utilities/Fonts -I../../../Utilities/CPU -Os -ffunction-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/BSP/Components/ov9655.o: E:/Sexto_sem/MCU_avanzados/BSP/Drivers/BSP/Components/ov9655/ov9655.c Drivers/BSP/Components/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32F746xx -DUSE_STM32746G_DISCO -DUSE_IOEXPANDER -c -I../../../Inc -I../../../Drivers/CMSIS/Include -I../../../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../../../Drivers/STM32F7xx_HAL_Driver/Inc -I../../../Drivers/BSP/STM32746G-Discovery -I../../../Drivers/BSP/Components/Common -I../../../Utilities/Log -I../../../Utilities/Fonts -I../../../Utilities/CPU -Os -ffunction-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/BSP/Components/wm8994.o: E:/Sexto_sem/MCU_avanzados/BSP/Drivers/BSP/Components/wm8994/wm8994.c Drivers/BSP/Components/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32F746xx -DUSE_STM32746G_DISCO -DUSE_IOEXPANDER -c -I../../../Inc -I../../../Drivers/CMSIS/Include -I../../../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../../../Drivers/STM32F7xx_HAL_Driver/Inc -I../../../Drivers/BSP/STM32746G-Discovery -I../../../Drivers/BSP/Components/Common -I../../../Utilities/Log -I../../../Utilities/Fonts -I../../../Utilities/CPU -Os -ffunction-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Drivers-2f-BSP-2f-Components

clean-Drivers-2f-BSP-2f-Components:
	-$(RM) ./Drivers/BSP/Components/ft5336.cyclo ./Drivers/BSP/Components/ft5336.d ./Drivers/BSP/Components/ft5336.o ./Drivers/BSP/Components/ft5336.su ./Drivers/BSP/Components/ov9655.cyclo ./Drivers/BSP/Components/ov9655.d ./Drivers/BSP/Components/ov9655.o ./Drivers/BSP/Components/ov9655.su ./Drivers/BSP/Components/wm8994.cyclo ./Drivers/BSP/Components/wm8994.d ./Drivers/BSP/Components/wm8994.o ./Drivers/BSP/Components/wm8994.su

.PHONY: clean-Drivers-2f-BSP-2f-Components

