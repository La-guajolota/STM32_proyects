################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Middlewares/Third_Party/EdgeImpulse_iris_plant_MachineLearning/edgeimpulse/edge-impulse-sdk/porting/ethos-core-driver/src/ethosu_device.c \
../Middlewares/Third_Party/EdgeImpulse_iris_plant_MachineLearning/edgeimpulse/edge-impulse-sdk/porting/ethos-core-driver/src/ethosu_driver.c \
../Middlewares/Third_Party/EdgeImpulse_iris_plant_MachineLearning/edgeimpulse/edge-impulse-sdk/porting/ethos-core-driver/src/ethosu_pmu.c 

C_DEPS += \
./Middlewares/Third_Party/EdgeImpulse_iris_plant_MachineLearning/edgeimpulse/edge-impulse-sdk/porting/ethos-core-driver/src/ethosu_device.d \
./Middlewares/Third_Party/EdgeImpulse_iris_plant_MachineLearning/edgeimpulse/edge-impulse-sdk/porting/ethos-core-driver/src/ethosu_driver.d \
./Middlewares/Third_Party/EdgeImpulse_iris_plant_MachineLearning/edgeimpulse/edge-impulse-sdk/porting/ethos-core-driver/src/ethosu_pmu.d 

OBJS += \
./Middlewares/Third_Party/EdgeImpulse_iris_plant_MachineLearning/edgeimpulse/edge-impulse-sdk/porting/ethos-core-driver/src/ethosu_device.o \
./Middlewares/Third_Party/EdgeImpulse_iris_plant_MachineLearning/edgeimpulse/edge-impulse-sdk/porting/ethos-core-driver/src/ethosu_driver.o \
./Middlewares/Third_Party/EdgeImpulse_iris_plant_MachineLearning/edgeimpulse/edge-impulse-sdk/porting/ethos-core-driver/src/ethosu_pmu.o 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/Third_Party/EdgeImpulse_iris_plant_MachineLearning/edgeimpulse/edge-impulse-sdk/porting/ethos-core-driver/src/%.o Middlewares/Third_Party/EdgeImpulse_iris_plant_MachineLearning/edgeimpulse/edge-impulse-sdk/porting/ethos-core-driver/src/%.su Middlewares/Third_Party/EdgeImpulse_iris_plant_MachineLearning/edgeimpulse/edge-impulse-sdk/porting/ethos-core-driver/src/%.cyclo: ../Middlewares/Third_Party/EdgeImpulse_iris_plant_MachineLearning/edgeimpulse/edge-impulse-sdk/porting/ethos-core-driver/src/%.c Middlewares/Third_Party/EdgeImpulse_iris_plant_MachineLearning/edgeimpulse/edge-impulse-sdk/porting/ethos-core-driver/src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F746xx -c -I../Core/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/EdgeImpulse_iris_plant_MachineLearning/edgeimpulse/ -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Middlewares-2f-Third_Party-2f-EdgeImpulse_iris_plant_MachineLearning-2f-edgeimpulse-2f-edge-2d-impulse-2d-sdk-2f-porting-2f-ethos-2d-core-2d-driver-2f-src

clean-Middlewares-2f-Third_Party-2f-EdgeImpulse_iris_plant_MachineLearning-2f-edgeimpulse-2f-edge-2d-impulse-2d-sdk-2f-porting-2f-ethos-2d-core-2d-driver-2f-src:
	-$(RM) ./Middlewares/Third_Party/EdgeImpulse_iris_plant_MachineLearning/edgeimpulse/edge-impulse-sdk/porting/ethos-core-driver/src/ethosu_device.cyclo ./Middlewares/Third_Party/EdgeImpulse_iris_plant_MachineLearning/edgeimpulse/edge-impulse-sdk/porting/ethos-core-driver/src/ethosu_device.d ./Middlewares/Third_Party/EdgeImpulse_iris_plant_MachineLearning/edgeimpulse/edge-impulse-sdk/porting/ethos-core-driver/src/ethosu_device.o ./Middlewares/Third_Party/EdgeImpulse_iris_plant_MachineLearning/edgeimpulse/edge-impulse-sdk/porting/ethos-core-driver/src/ethosu_device.su ./Middlewares/Third_Party/EdgeImpulse_iris_plant_MachineLearning/edgeimpulse/edge-impulse-sdk/porting/ethos-core-driver/src/ethosu_driver.cyclo ./Middlewares/Third_Party/EdgeImpulse_iris_plant_MachineLearning/edgeimpulse/edge-impulse-sdk/porting/ethos-core-driver/src/ethosu_driver.d ./Middlewares/Third_Party/EdgeImpulse_iris_plant_MachineLearning/edgeimpulse/edge-impulse-sdk/porting/ethos-core-driver/src/ethosu_driver.o ./Middlewares/Third_Party/EdgeImpulse_iris_plant_MachineLearning/edgeimpulse/edge-impulse-sdk/porting/ethos-core-driver/src/ethosu_driver.su ./Middlewares/Third_Party/EdgeImpulse_iris_plant_MachineLearning/edgeimpulse/edge-impulse-sdk/porting/ethos-core-driver/src/ethosu_pmu.cyclo ./Middlewares/Third_Party/EdgeImpulse_iris_plant_MachineLearning/edgeimpulse/edge-impulse-sdk/porting/ethos-core-driver/src/ethosu_pmu.d ./Middlewares/Third_Party/EdgeImpulse_iris_plant_MachineLearning/edgeimpulse/edge-impulse-sdk/porting/ethos-core-driver/src/ethosu_pmu.o ./Middlewares/Third_Party/EdgeImpulse_iris_plant_MachineLearning/edgeimpulse/edge-impulse-sdk/porting/ethos-core-driver/src/ethosu_pmu.su

.PHONY: clean-Middlewares-2f-Third_Party-2f-EdgeImpulse_iris_plant_MachineLearning-2f-edgeimpulse-2f-edge-2d-impulse-2d-sdk-2f-porting-2f-ethos-2d-core-2d-driver-2f-src

