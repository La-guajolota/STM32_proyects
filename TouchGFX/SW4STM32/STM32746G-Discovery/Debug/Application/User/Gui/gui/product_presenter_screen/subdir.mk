################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
E:/Sexto_sem/MCU_avanzados/TouchGFX/Gui/gui/src/product_presenter_screen/ProductPresenterPresenter.cpp \
E:/Sexto_sem/MCU_avanzados/TouchGFX/Gui/gui/src/product_presenter_screen/ProductPresenterView.cpp 

OBJS += \
./Application/User/Gui/gui/product_presenter_screen/ProductPresenterPresenter.o \
./Application/User/Gui/gui/product_presenter_screen/ProductPresenterView.o 

CPP_DEPS += \
./Application/User/Gui/gui/product_presenter_screen/ProductPresenterPresenter.d \
./Application/User/Gui/gui/product_presenter_screen/ProductPresenterView.d 


# Each subdirectory must supply rules for building sources it contributes
Application/User/Gui/gui/product_presenter_screen/ProductPresenterPresenter.o: E:/Sexto_sem/MCU_avanzados/TouchGFX/Gui/gui/src/product_presenter_screen/ProductPresenterPresenter.cpp Application/User/Gui/gui/product_presenter_screen/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m7 -std=gnu++14 -g3 -DST -DSTM32F746xx -DUSE_BPP=16 -DUSE_FLOATING_POINT -c -I../../../Gui/gui/include -I../../../Gui/generated/fonts/include -I../../../Gui/generated/images/include -I../../../Gui/generated/texts/include -I../../../Middlewares/ST/TouchGFX/touchgfx/framework/include -I../../../Middlewares/Third_Party/FreeRTOS/Source/include -I../../../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I../../../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM7/r0p1 -I../../../Drivers/STM32F7xx_HAL_Driver/Inc -I../../../Drivers/BSP/STM32746G-Discovery -I../../../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../../../Gui/target -I../../../Core/Inc -I../../../Drivers/CMSIS/Include -Os -ffunction-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -Wno-strict-aliasing -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Application/User/Gui/gui/product_presenter_screen/ProductPresenterView.o: E:/Sexto_sem/MCU_avanzados/TouchGFX/Gui/gui/src/product_presenter_screen/ProductPresenterView.cpp Application/User/Gui/gui/product_presenter_screen/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m7 -std=gnu++14 -g3 -DST -DSTM32F746xx -DUSE_BPP=16 -DUSE_FLOATING_POINT -c -I../../../Gui/gui/include -I../../../Gui/generated/fonts/include -I../../../Gui/generated/images/include -I../../../Gui/generated/texts/include -I../../../Middlewares/ST/TouchGFX/touchgfx/framework/include -I../../../Middlewares/Third_Party/FreeRTOS/Source/include -I../../../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I../../../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM7/r0p1 -I../../../Drivers/STM32F7xx_HAL_Driver/Inc -I../../../Drivers/BSP/STM32746G-Discovery -I../../../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../../../Gui/target -I../../../Core/Inc -I../../../Drivers/CMSIS/Include -Os -ffunction-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -Wno-strict-aliasing -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Application-2f-User-2f-Gui-2f-gui-2f-product_presenter_screen

clean-Application-2f-User-2f-Gui-2f-gui-2f-product_presenter_screen:
	-$(RM) ./Application/User/Gui/gui/product_presenter_screen/ProductPresenterPresenter.cyclo ./Application/User/Gui/gui/product_presenter_screen/ProductPresenterPresenter.d ./Application/User/Gui/gui/product_presenter_screen/ProductPresenterPresenter.o ./Application/User/Gui/gui/product_presenter_screen/ProductPresenterPresenter.su ./Application/User/Gui/gui/product_presenter_screen/ProductPresenterView.cyclo ./Application/User/Gui/gui/product_presenter_screen/ProductPresenterView.d ./Application/User/Gui/gui/product_presenter_screen/ProductPresenterView.o ./Application/User/Gui/gui/product_presenter_screen/ProductPresenterView.su

.PHONY: clean-Application-2f-User-2f-Gui-2f-gui-2f-product_presenter_screen

