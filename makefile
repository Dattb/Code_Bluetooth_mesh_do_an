################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include subdir.mk
-include vendor/user_app/subdir.mk
-include vendor/mesh/subdir.mk
-include vendor/common/subdir.mk
-include vendor/common/nl_api/subdir.mk
-include vendor/common/mi_api/subdir.mk
-include vendor/common/mi_api/mijia_ble_api/subdir.mk
-include vendor/common/mi_api/mi_vendor/subdir.mk
-include vendor/common/mi_api/libs/third_party/pt/subdir.mk
-include vendor/common/mi_api/libs/third_party/micro-ecc/subdir.mk
-include vendor/common/mi_api/libs/third_party/mbedtls/subdir.mk
-include vendor/RD_Code/subdir.mk
-include proj/mcu_spec/subdir.mk
-include proj/mcu/subdir.mk
-include proj/drivers/subdir.mk
-include proj/common/subdir.mk
-include proj/app/subdir.mk
-include drivers/8258/subdir.mk
-include boot/8258/subdir.mk
-include 8258_mesh/vendor/user_app/subdir.mk
-include 8258_mesh/vendor/mesh/subdir.mk
-include 8258_mesh/vendor/common/subdir.mk
-include 8258_mesh/vendor/common/nl_api/subdir.mk
-include 8258_mesh/vendor/common/mi_api/subdir.mk
-include 8258_mesh/vendor/common/mi_api/mijia_ble_api/subdir.mk
-include 8258_mesh/vendor/common/mi_api/mi_vendor/subdir.mk
-include 8258_mesh/vendor/common/mi_api/libs/third_party/pt/subdir.mk
-include 8258_mesh/vendor/common/mi_api/libs/third_party/micro-ecc/subdir.mk
-include 8258_mesh/vendor/common/mi_api/libs/third_party/mbedtls/subdir.mk
-include 8258_mesh/proj/mcu_spec/subdir.mk
-include 8258_mesh/proj/mcu/subdir.mk
-include 8258_mesh/proj/drivers/subdir.mk
-include 8258_mesh/proj/common/subdir.mk
-include 8258_mesh/proj/app/subdir.mk
-include 8258_mesh/drivers/8258/subdir.mk
-include 8258_mesh/subdir.mk
-include 8258_mesh/boot/8258/subdir.mk
-include objects.mk

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 
LST += \
8258_mesh.lst \

FLASH_IMAGE += \

SIZEDUMMY += \
sizedummy \


# All Target
all: pre-build main-build

# Main-build Target
main-build: DEN_CCT_1.2.elf secondary-outputs

# Tool invocations
DEN_CCT_1.2.elf: $(OBJS) $(USER_OBJS)
	@echo 'Building target: $@'
	@echo 'Invoking: TC32 C Linker'
	tc32-elf-ld --gc-sections -L"C:\Users\Dat UTC\Documents\Rang_Dong\CODE_DEN_CCT\sig_mesh_sdk\firmware\proj_lib" -T ../boot.link -o"DEN_CCT_1.2.elf" $(OBJS) $(USER_OBJS) $(LIBS)
	@echo 'Finished building target: $@'
	@echo ' '
	$(MAKE) --no-print-directory post-build

8258_mesh.lst: DEN_CCT_1.2.elf
	@echo 'Invoking: TC32 Create Extended Listing'
	tc32-elf-objdump -x -D -l -S DEN_CCT_1.2.elf  >"8258_mesh.lst"
	@echo 'Finished building: $@'
	@echo ' '

: DEN_CCT_1.2.elf
	@echo 'Create Flash image (binary format)'
	tc32-elf-objcopy -O binary DEN_CCT_1.2.elf
	@echo 'Finished building: $@'
	@echo ' '

sizedummy: DEN_CCT_1.2.elf
	@echo 'Invoking: Print Size'
	tc32-elf-size -t DEN_CCT_1.2.elf
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) $(FLASH_IMAGE)$(ELFS)$(OBJS)$(LST)$(SIZEDUMMY) DEN_CCT_1.2.elf
	-@echo ' '

pre-build:
	-"C:\Users\Dat UTC\Documents\Rang_Dong\CODE_DEN_CCT\sig_mesh_sdk\firmware/getver.sh"
	-@echo ' '

post-build:
	-"C:\Users\Dat UTC\Documents\Rang_Dong\CODE_DEN_CCT\sig_mesh_sdk\firmware/tl_check_fw.sh"   RD_CCTLight   DEN_CCT_1.2
	-@echo ' '

secondary-outputs: $(LST) $(FLASH_IMAGE) $(SIZEDUMMY)

.PHONY: all clean dependents
.SECONDARY: main-build pre-build post-build

-include ../makefile.targets
