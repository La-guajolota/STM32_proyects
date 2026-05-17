################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include Middlewares/TouchGFX/Target/subdir.mk
-include Middlewares/TouchGFX/OS/subdir.mk
-include Middlewares/FreeRTOS/Portable/subdir.mk
-include Middlewares/FreeRTOS/MemMgr/subdir.mk
-include Middlewares/FreeRTOS/CMSIS_RTOS/subdir.mk
-include Middlewares/FreeRTOS/subdir.mk
-include Drivers/STM32F7xx_HAL_Driver/subdir.mk
-include Drivers/CMSIS/subdir.mk
-include Drivers/BSP/Components/subdir.mk
-include Drivers/BSP/subdir.mk
-include Application/User/Gui/gui/product_presenter_screen/subdir.mk
-include Application/User/Gui/gui/model/subdir.mk
-include Application/User/Gui/gui/main_menu_screen/subdir.mk
-include Application/User/Gui/gui/graph_screen/subdir.mk
-include Application/User/Gui/gui/easing_equation_screen/subdir.mk
-include Application/User/Gui/gui/custom_controls_screen/subdir.mk
-include Application/User/Gui/gui/common/subdir.mk
-include Application/User/Gui/generated/texts/subdir.mk
-include Application/User/Gui/generated/images/ProductPresenter/subdir.mk
-include Application/User/Gui/generated/images/MainMenu/subdir.mk
-include Application/User/Gui/generated/images/Graph/subdir.mk
-include Application/User/Gui/generated/images/EasingEquation/subdir.mk
-include Application/User/Gui/generated/images/CustomControls/subdir.mk
-include Application/User/Gui/generated/images/subdir.mk
-include Application/User/Gui/generated/fonts/subdir.mk
-include Application/User/Core/subdir.mk
-include Application/SW4STM32/subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(CC_DEPS)),)
-include $(CC_DEPS)
endif
ifneq ($(strip $(C++_DEPS)),)
-include $(C++_DEPS)
endif
ifneq ($(strip $(CCM_DEPS)),)
-include $(CCM_DEPS)
endif
ifneq ($(strip $(C_UPPER_DEPS)),)
-include $(C_UPPER_DEPS)
endif
ifneq ($(strip $(CXX_DEPS)),)
-include $(CXX_DEPS)
endif
ifneq ($(strip $(S_DEPS)),)
-include $(S_DEPS)
endif
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
ifneq ($(strip $(CXXM_DEPS)),)
-include $(CXXM_DEPS)
endif
ifneq ($(strip $(C++M_DEPS)),)
-include $(C++M_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
ifneq ($(strip $(CPP_DEPS)),)
-include $(CPP_DEPS)
endif
endif

-include ../makefile.defs

OPTIONAL_TOOL_DEPS := \
$(wildcard ../makefile.defs) \
$(wildcard ../makefile.init) \
$(wildcard ../makefile.targets) \


BUILD_ARTIFACT_NAME := TouchGFX
BUILD_ARTIFACT_EXTENSION := elf
BUILD_ARTIFACT_PREFIX :=
BUILD_ARTIFACT := $(BUILD_ARTIFACT_PREFIX)$(BUILD_ARTIFACT_NAME)$(if $(BUILD_ARTIFACT_EXTENSION),.$(BUILD_ARTIFACT_EXTENSION),)

# Add inputs and outputs from these tool invocations to the build variables 
EXECUTABLES += \
TouchGFX.elf \

MAP_FILES += \
TouchGFX.map \

SIZE_OUTPUT += \
default.size.stdout \

OBJDUMP_LIST += \
TouchGFX.list \

OBJCOPY_HEX += \
TouchGFX.hex \


# All Target
all: main-build

# Main-build Target
main-build: TouchGFX.elf secondary-outputs

# Tool invocations
TouchGFX.elf TouchGFX.map: $(OBJS) $(USER_OBJS) ../STM32F746NGHx_FLASH.ld makefile objects.list $(OPTIONAL_TOOL_DEPS)
	arm-none-eabi-g++ -o "TouchGFX.elf" @"objects.list" $(USER_OBJS) $(LIBS) -mcpu=cortex-m7 -T"../STM32F746NGHx_FLASH.ld" --specs=nosys.specs -Wl,-Map="TouchGFX.map" -Wl,--gc-sections -static -L../../../Middlewares/ST/TouchGFX/touchgfx/lib/core/cortex_m7/gcc -L../../../Middlewares/ST/STM32_Audio/Addons/PDM/Lib --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -Wl,--start-group -lc -lm -lstdc++ -lsupc++ -Wl,--end-group
	@echo 'Finished building target: $@'
	@echo ' '

default.size.stdout: $(EXECUTABLES) makefile objects.list $(OPTIONAL_TOOL_DEPS)
	arm-none-eabi-size  $(EXECUTABLES)
	@echo 'Finished building: $@'
	@echo ' '

TouchGFX.list: $(EXECUTABLES) makefile objects.list $(OPTIONAL_TOOL_DEPS)
	arm-none-eabi-objdump -h -S $(EXECUTABLES) > "TouchGFX.list"
	@echo 'Finished building: $@'
	@echo ' '

TouchGFX.hex: $(EXECUTABLES) makefile objects.list $(OPTIONAL_TOOL_DEPS)
	arm-none-eabi-objcopy  -O ihex $(EXECUTABLES) "TouchGFX.hex"
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) TouchGFX.elf TouchGFX.hex TouchGFX.list TouchGFX.map default.size.stdout
	-@echo ' '

secondary-outputs: $(SIZE_OUTPUT) $(OBJDUMP_LIST) $(OBJCOPY_HEX)

fail-specified-linker-script-missing:
	@echo 'Error: Cannot find the specified linker script. Check the linker settings in the build configuration.'
	@exit 2

warn-no-linker-script-specified:
	@echo 'Warning: No linker script specified. Check the linker settings in the build configuration.'

.PHONY: all clean dependents main-build fail-specified-linker-script-missing warn-no-linker-script-specified

-include ../makefile.targets
