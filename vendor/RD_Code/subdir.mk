################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../vendor/RD_Code/RD_Mess_Data.c \
../vendor/RD_Code/RD_TypeDevice.c 

OBJS += \
./vendor/RD_Code/RD_Mess_Data.o \
./vendor/RD_Code/RD_TypeDevice.o 


# Each subdirectory must supply rules for building sources it contributes
vendor/RD_Code/%.o: ../vendor/RD_Code/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: TC32 Compiler'
	tc32-elf-gcc -ffunction-sections -fdata-sections -I"C:\Users\Dat UTC\Documents\Rang_Dong\CODE_DEN_CCT\sig_mesh_sdk\firmware" -I"C:\Users\Dat UTC\Documents\Rang_Dong\CODE_DEN_CCT\sig_mesh_sdk\firmware\vendor\common\mi_api\libs" -I"C:\Users\Dat UTC\Documents\Rang_Dong\CODE_DEN_CCT\sig_mesh_sdk\firmware\vendor\common\mi_api\mijia_ble_api" -D__PROJECT_MESH__=1 -DCHIP_TYPE=CHIP_TYPE_8258 -Wall -O2 -fpack-struct -fshort-enums -finline-small-functions -std=gnu99 -fshort-wchar -fms-extensions -c -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


