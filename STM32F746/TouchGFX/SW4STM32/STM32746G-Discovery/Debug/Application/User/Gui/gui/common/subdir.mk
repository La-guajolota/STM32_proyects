################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
E:/Sexto_sem/MCU_avanzados/TouchGFX/Gui/gui/src/common/CollapsibleMenu.cpp \
E:/Sexto_sem/MCU_avanzados/TouchGFX/Gui/gui/src/common/DemoPresenter.cpp \
E:/Sexto_sem/MCU_avanzados/TouchGFX/Gui/gui/src/common/DotIndicator.cpp \
E:/Sexto_sem/MCU_avanzados/TouchGFX/Gui/gui/src/common/FrontendApplication.cpp \
E:/Sexto_sem/MCU_avanzados/TouchGFX/Gui/gui/src/common/SwipeContainer.cpp 

OBJS += \
./Application/User/Gui/gui/common/CollapsibleMenu.o \
./Application/User/Gui/gui/common/DemoPresenter.o \
./Application/User/Gui/gui/common/DotIndicator.o \
./Application/User/Gui/gui/common/FrontendApplication.o \
./Application/User/Gui/gui/common/SwipeContainer.o 

CPP_DEPS += \
./Application/User/Gui/gui/common/CollapsibleMenu.d \
./Application/User/Gui/gui/common/DemoPresenter.d \
./Application/User/Gui/gui/common/DotIndicator.d \
./Application/User/Gui/gui/common/FrontendApplication.d \
./Application/User/Gui/gui/common/SwipeContainer.d 


# Each subdirectory must supply rules for building sources it contributes
Application/User/Gui/gui/common/CollapsibleMenu.o: E:/Sexto_sem/MCU_avanzados/TouchGFX/Gui/gui/src/common/CollapsibleMenu.cpp Application/User/Gui/gui/common/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m7 -std=gnu++14 -g3 -DST -DSTM32F746xx -DUSE_BPP=16 -DUSE_FLOATING_POINT -c -I../../../Gui/gui/include -I../../../Gui/generated/fonts/include -I../../../Gui/generated/images/include -I../../../Gui/generated/texts/include -I../../../Middlewares/ST/TouchGFX/touchgfx/framework/include -I../../../Middlewares/Third_Party/FreeRTOS/Source/include -I../../../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I../../../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM7/r0p1 -I../../../Drivers/STM32F7xx_HAL_Driver/Inc -I../../../Drivers/BSP/STM32746G-Discovery -I../../../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../../../Gui/target -I../../../Core/Inc -I../../../Drivers/CMSIS/Include -Os -ffunction-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -Wno-strict-aliasing -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Application/User/Gui/gui/common/DemoPresenter.o: E:/Sexto_sem/MCU_avanzados/TouchGFX/Gui/gui/src/common/DemoPresenter.cpp Application/User/Gui/gui/common/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m7 -std=gnu++14 -g3 -DST -DSTM32F746xx -DUSE_BPP=16 -DUSE_FLOATING_POINT -c -I../../../Gui/gui/include -I../../../Gui/generated/fonts/include -I../../../Gui/generated/images/include -I../../../Gui/generated/texts/include -I../../../Middlewares/ST/TouchGFX/touchgfx/framework/include -I../../../Middlewares/Third_Party/FreeRTOS/Source/include -I../../../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I../../../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM7/r0p1 -I../../../Drivers/STM32F7xx_HAL_Driver/Inc -I../../../Drivers/BSP/STM32746G-Discovery -I../../../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../../../Gui/target -I../../../Core/Inc -I../../../Drivers/CMSIS/Include -Os -ffunction-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -Wno-strict-aliasing -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Application/User/Gui/gui/common/DotIndicator.o: E:/Sexto_sem/MCU_avanzados/TouchGFX/Gui/gui/src/common/DotIndicator.cpp Application/User/Gui/gui/common/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m7 -std=gnu++14 -g3 -DST -DSTM32F746xx -DUSE_BPP=16 -DUSE_FLOATING_POINT -c -I../../../Gui/gui/include -I../../../Gui/generated/fonts/include -I../../../Gui/generated/images/include -I../../../Gui/generated/texts/include -I../../../Middlewares/ST/TouchGFX/touchgfx/framework/include -I../../../Middlewares/Third_Party/FreeRTOS/Source/include -I../../../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I../../../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM7/r0p1 -I../../../Drivers/STM32F7xx_HAL_Driver/Inc -I../../../Drivers/BSP/STM32746G-Discovery -I../../../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../../../Gui/target -I../../../Core/Inc -I../../../Drivers/CMSIS/Include -Os -ffunction-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -Wno-strict-aliasing -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Application/User/Gui/gui/common/FrontendApplication.o: E:/Sexto_sem/MCU_avanzados/TouchGFX/Gui/gui/src/common/FrontendApplication.cpp Application/User/Gui/gui/common/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m7 -std=gnu++14 -g3 -DST -DSTM32F746xx -DUSE_BPP=16 -DUSE_FLOATING_POINT -c -I../../../Gui/gui/include -I../../../Gui/generated/fonts/include -I../../../Gui/generated/images/include -I../../../Gui/generated/texts/include -I../../../Middlewares/ST/TouchGFX/touchgfx/framework/include -I../../../Middlewares/Third_Party/FreeRTOS/Source/include -I../../../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I../../../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM7/r0p1 -I../../../Drivers/STM32F7xx_HAL_Driver/Inc -I../../../Drivers/BSP/STM32746G-Discovery -I../../../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../../../Gui/target -I../../../Core/Inc -I../../../Drivers/CMSIS/Include -Os -ffunction-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -Wno-strict-aliasing -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Application/User/Gui/gui/common/SwipeContainer.o: E:/Sexto_sem/MCU_avanzados/TouchGFX/Gui/gui/src/common/SwipeContainer.cpp Application/User/Gui/gui/common/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m7 -std=gnu++14 -g3 -DST -DSTM32F746xx -DUSE_BPP=16 -DUSE_FLOATING_POINT -c -I../../../Gui/gui/include -I../../../Gui/generated/fonts/include -I../../../Gui/generated/images/include -I../../../Gui/generated/texts/include -I../../../Middlewares/ST/TouchGFX/touchgfx/framework/include -I../../../Middlewares/Third_Party/FreeRTOS/Source/include -I../../../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I../../../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM7/r0p1 -I../../../Drivers/STM32F7xx_HAL_Driver/Inc -I../../../Drivers/BSP/STM32746G-Discovery -I../../../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../../../Gui/target -I../../../Core/Inc -I../../../Drivers/CMSIS/Include -Os -ffunction-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -Wno-strict-aliasing -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Application-2f-User-2f-Gui-2f-gui-2f-common

clean-Application-2f-User-2f-Gui-2f-gui-2f-common:
	-$(RM) ./Application/User/Gui/gui/common/CollapsibleMenu.cyclo ./Application/User/Gui/gui/common/CollapsibleMenu.d ./Application/User/Gui/gui/common/CollapsibleMenu.o ./Application/User/Gui/gui/common/CollapsibleMenu.su ./Application/User/Gui/gui/common/DemoPresenter.cyclo ./Application/User/Gui/gui/common/DemoPresenter.d ./Application/User/Gui/gui/common/DemoPresenter.o ./Application/User/Gui/gui/common/DemoPresenter.su ./Application/User/Gui/gui/common/DotIndicator.cyclo ./Application/User/Gui/gui/common/DotIndicator.d ./Application/User/Gui/gui/common/DotIndicator.o ./Application/User/Gui/gui/common/DotIndicator.su ./Application/User/Gui/gui/common/FrontendApplication.cyclo ./Application/User/Gui/gui/common/FrontendApplication.d ./Application/User/Gui/gui/common/FrontendApplication.o ./Application/User/Gui/gui/common/FrontendApplication.su ./Application/User/Gui/gui/common/SwipeContainer.cyclo ./Application/User/Gui/gui/common/SwipeContainer.d ./Application/User/Gui/gui/common/SwipeContainer.o ./Application/User/Gui/gui/common/SwipeContainer.su

.PHONY: clean-Application-2f-User-2f-Gui-2f-gui-2f-common

