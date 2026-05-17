################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Middlewares/Third_Party/EdgeImpulse_sennal_16bits_2_MachineLearning/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConcatenationFunctions/arm_concatenation_s8_w.c \
../Middlewares/Third_Party/EdgeImpulse_sennal_16bits_2_MachineLearning/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConcatenationFunctions/arm_concatenation_s8_x.c \
../Middlewares/Third_Party/EdgeImpulse_sennal_16bits_2_MachineLearning/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConcatenationFunctions/arm_concatenation_s8_y.c \
../Middlewares/Third_Party/EdgeImpulse_sennal_16bits_2_MachineLearning/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConcatenationFunctions/arm_concatenation_s8_z.c 

C_DEPS += \
./Middlewares/Third_Party/EdgeImpulse_sennal_16bits_2_MachineLearning/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConcatenationFunctions/arm_concatenation_s8_w.d \
./Middlewares/Third_Party/EdgeImpulse_sennal_16bits_2_MachineLearning/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConcatenationFunctions/arm_concatenation_s8_x.d \
./Middlewares/Third_Party/EdgeImpulse_sennal_16bits_2_MachineLearning/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConcatenationFunctions/arm_concatenation_s8_y.d \
./Middlewares/Third_Party/EdgeImpulse_sennal_16bits_2_MachineLearning/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConcatenationFunctions/arm_concatenation_s8_z.d 

OBJS += \
./Middlewares/Third_Party/EdgeImpulse_sennal_16bits_2_MachineLearning/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConcatenationFunctions/arm_concatenation_s8_w.o \
./Middlewares/Third_Party/EdgeImpulse_sennal_16bits_2_MachineLearning/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConcatenationFunctions/arm_concatenation_s8_x.o \
./Middlewares/Third_Party/EdgeImpulse_sennal_16bits_2_MachineLearning/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConcatenationFunctions/arm_concatenation_s8_y.o \
./Middlewares/Third_Party/EdgeImpulse_sennal_16bits_2_MachineLearning/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConcatenationFunctions/arm_concatenation_s8_z.o 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/Third_Party/EdgeImpulse_sennal_16bits_2_MachineLearning/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConcatenationFunctions/%.o Middlewares/Third_Party/EdgeImpulse_sennal_16bits_2_MachineLearning/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConcatenationFunctions/%.su Middlewares/Third_Party/EdgeImpulse_sennal_16bits_2_MachineLearning/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConcatenationFunctions/%.cyclo: ../Middlewares/Third_Party/EdgeImpulse_sennal_16bits_2_MachineLearning/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConcatenationFunctions/%.c Middlewares/Third_Party/EdgeImpulse_sennal_16bits_2_MachineLearning/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConcatenationFunctions/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F746xx -c -I../Core/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/EdgeImpulse_sennal_16bits_2_MachineLearning/edgeimpulse/ -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Middlewares-2f-Third_Party-2f-EdgeImpulse_sennal_16bits_2_MachineLearning-2f-edgeimpulse-2f-edge-2d-impulse-2d-sdk-2f-CMSIS-2f-NN-2f-Source-2f-ConcatenationFunctions

clean-Middlewares-2f-Third_Party-2f-EdgeImpulse_sennal_16bits_2_MachineLearning-2f-edgeimpulse-2f-edge-2d-impulse-2d-sdk-2f-CMSIS-2f-NN-2f-Source-2f-ConcatenationFunctions:
	-$(RM) ./Middlewares/Third_Party/EdgeImpulse_sennal_16bits_2_MachineLearning/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConcatenationFunctions/arm_concatenation_s8_w.cyclo ./Middlewares/Third_Party/EdgeImpulse_sennal_16bits_2_MachineLearning/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConcatenationFunctions/arm_concatenation_s8_w.d ./Middlewares/Third_Party/EdgeImpulse_sennal_16bits_2_MachineLearning/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConcatenationFunctions/arm_concatenation_s8_w.o ./Middlewares/Third_Party/EdgeImpulse_sennal_16bits_2_MachineLearning/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConcatenationFunctions/arm_concatenation_s8_w.su ./Middlewares/Third_Party/EdgeImpulse_sennal_16bits_2_MachineLearning/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConcatenationFunctions/arm_concatenation_s8_x.cyclo ./Middlewares/Third_Party/EdgeImpulse_sennal_16bits_2_MachineLearning/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConcatenationFunctions/arm_concatenation_s8_x.d ./Middlewares/Third_Party/EdgeImpulse_sennal_16bits_2_MachineLearning/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConcatenationFunctions/arm_concatenation_s8_x.o ./Middlewares/Third_Party/EdgeImpulse_sennal_16bits_2_MachineLearning/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConcatenationFunctions/arm_concatenation_s8_x.su ./Middlewares/Third_Party/EdgeImpulse_sennal_16bits_2_MachineLearning/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConcatenationFunctions/arm_concatenation_s8_y.cyclo ./Middlewares/Third_Party/EdgeImpulse_sennal_16bits_2_MachineLearning/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConcatenationFunctions/arm_concatenation_s8_y.d ./Middlewares/Third_Party/EdgeImpulse_sennal_16bits_2_MachineLearning/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConcatenationFunctions/arm_concatenation_s8_y.o ./Middlewares/Third_Party/EdgeImpulse_sennal_16bits_2_MachineLearning/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConcatenationFunctions/arm_concatenation_s8_y.su ./Middlewares/Third_Party/EdgeImpulse_sennal_16bits_2_MachineLearning/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConcatenationFunctions/arm_concatenation_s8_z.cyclo ./Middlewares/Third_Party/EdgeImpulse_sennal_16bits_2_MachineLearning/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConcatenationFunctions/arm_concatenation_s8_z.d ./Middlewares/Third_Party/EdgeImpulse_sennal_16bits_2_MachineLearning/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConcatenationFunctions/arm_concatenation_s8_z.o ./Middlewares/Third_Party/EdgeImpulse_sennal_16bits_2_MachineLearning/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConcatenationFunctions/arm_concatenation_s8_z.su

.PHONY: clean-Middlewares-2f-Third_Party-2f-EdgeImpulse_sennal_16bits_2_MachineLearning-2f-edgeimpulse-2f-edge-2d-impulse-2d-sdk-2f-CMSIS-2f-NN-2f-Source-2f-ConcatenationFunctions

