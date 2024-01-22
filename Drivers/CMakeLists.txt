# pull library name from directory name
get_filename_component(libname ${CMAKE_CURRENT_SOURCE_DIR} NAME)
string(REPLACE " " "_" libname ${libname})

message(STATUS "Adding the libname: ${libname}")

set(libdeps
    "${libdeps}"
    ${CMAKE_CURRENT_LIST_DIR}/BSP/P-NUCLEO-WB55.Nucleo/
    ${CMAKE_CURRENT_LIST_DIR}/CMSIS/Device/ST/STM32WBxx/Include
    ${CMAKE_CURRENT_LIST_DIR}/STM32WBxx_HAL_Driver/Inc
    # ${CMAKE_CURRENT_LIST_DIR}/STM32F1xx_HAL_Driver/Inc/Legacy
    ${CMAKE_CURRENT_LIST_DIR}/CMSIS/Include
)

# Define library
set ( srcs
    "${srcs}"
    ${CMAKE_CURRENT_LIST_DIR}/BSP/P-NUCLEO-WB55.Nucleo/stm32wbxx_nucleo.c
    # ${CMAKE_CURRENT_LIST_DIR}/Startup/startup_stm32f103ctx.s

    ${CMAKE_CURRENT_LIST_DIR}/STM32WBxx_HAL_Driver/Src/stm32wbxx_hal.c
    ${CMAKE_CURRENT_LIST_DIR}/STM32WBxx_HAL_Driver/Src/stm32wbxx_hal_adc.c
    ${CMAKE_CURRENT_LIST_DIR}/STM32WBxx_HAL_Driver/Src/stm32wbxx_hal_adc_ex.c
    # ${CMAKE_CURRENT_LIST_DIR}/STM32WBxx_HAL_Driver/Src/stm32wbxx_hal_comp.c
    ${CMAKE_CURRENT_LIST_DIR}/STM32WBxx_HAL_Driver/Src/stm32wbxx_hal_cortex.c
    # ${CMAKE_CURRENT_LIST_DIR}/STM32WBxx_HAL_Driver/Src/stm32wbxx_hal_crc.c
    # ${CMAKE_CURRENT_LIST_DIR}/STM32WBxx_HAL_Driver/Src/stm32wbxx_hal_crc_ex.c
    # ${CMAKE_CURRENT_LIST_DIR}/STM32WBxx_HAL_Driver/Src/stm32wbxx_hal_cryp.c
    # ${CMAKE_CURRENT_LIST_DIR}/STM32WBxx_HAL_Driver/Src/stm32wbxx_hal_cryp_ex.c
    ${CMAKE_CURRENT_LIST_DIR}/STM32WBxx_HAL_Driver/Src/stm32wbxx_hal_dma.c
    ${CMAKE_CURRENT_LIST_DIR}/STM32WBxx_HAL_Driver/Src/stm32wbxx_hal_dma_ex.c
    ${CMAKE_CURRENT_LIST_DIR}/STM32WBxx_HAL_Driver/Src/stm32wbxx_hal_exti.c
    ${CMAKE_CURRENT_LIST_DIR}/STM32WBxx_HAL_Driver/Src/stm32wbxx_hal_flash.c
    ${CMAKE_CURRENT_LIST_DIR}/STM32WBxx_HAL_Driver/Src/stm32wbxx_hal_flash_ex.c
    ${CMAKE_CURRENT_LIST_DIR}/STM32WBxx_HAL_Driver/Src/stm32wbxx_hal_gpio.c
    ${CMAKE_CURRENT_LIST_DIR}/STM32WBxx_HAL_Driver/Src/stm32wbxx_hal_hsem.c
    ${CMAKE_CURRENT_LIST_DIR}/STM32WBxx_HAL_Driver/Src/stm32wbxx_hal_i2c.c
    ${CMAKE_CURRENT_LIST_DIR}/STM32WBxx_HAL_Driver/Src/stm32wbxx_hal_i2c_ex.c
    ${CMAKE_CURRENT_LIST_DIR}/STM32WBxx_HAL_Driver/Src/stm32wbxx_hal_ipcc.c
    # ${CMAKE_CURRENT_LIST_DIR}/STM32WBxx_HAL_Driver/Src/stm32wbxx_hal_irda.c
    # ${CMAKE_CURRENT_LIST_DIR}/STM32WBxx_HAL_Driver/Src/stm32wbxx_hal_iwdg.c
    # ${CMAKE_CURRENT_LIST_DIR}/STM32WBxx_HAL_Driver/Src/stm32wbxx_hal_lcd.c
    # ${CMAKE_CURRENT_LIST_DIR}/STM32WBxx_HAL_Driver/Src/stm32wbxx_hal_lptim.c
    # ${CMAKE_CURRENT_LIST_DIR}/STM32WBxx_HAL_Driver/Src/stm32wbxx_hal_msp_template.c
    # ${CMAKE_CURRENT_LIST_DIR}/STM32WBxx_HAL_Driver/Src/stm32wbxx_hal_pcd.c
    # ${CMAKE_CURRENT_LIST_DIR}/STM32WBxx_HAL_Driver/Src/stm32wbxx_hal_pcd_ex.c
    # ${CMAKE_CURRENT_LIST_DIR}/STM32WBxx_HAL_Driver/Src/stm32wbxx_hal_pka.c
    ${CMAKE_CURRENT_LIST_DIR}/STM32WBxx_HAL_Driver/Src/stm32wbxx_hal_pwr.c
    ${CMAKE_CURRENT_LIST_DIR}/STM32WBxx_HAL_Driver/Src/stm32wbxx_hal_pwr_ex.c
    # ${CMAKE_CURRENT_LIST_DIR}/STM32WBxx_HAL_Driver/Src/stm32wbxx_hal_qspi.c
    ${CMAKE_CURRENT_LIST_DIR}/STM32WBxx_HAL_Driver/Src/stm32wbxx_hal_rcc.c
    ${CMAKE_CURRENT_LIST_DIR}/STM32WBxx_HAL_Driver/Src/stm32wbxx_hal_rcc_ex.c
    ${CMAKE_CURRENT_LIST_DIR}/STM32WBxx_HAL_Driver/Src/stm32wbxx_hal_rng.c
    ${CMAKE_CURRENT_LIST_DIR}/STM32WBxx_HAL_Driver/Src/stm32wbxx_hal_rtc.c
    ${CMAKE_CURRENT_LIST_DIR}/STM32WBxx_HAL_Driver/Src/stm32wbxx_hal_rtc_ex.c
    # ${CMAKE_CURRENT_LIST_DIR}/STM32WBxx_HAL_Driver/Src/stm32wbxx_hal_sai.c
    # ${CMAKE_CURRENT_LIST_DIR}/STM32WBxx_HAL_Driver/Src/stm32wbxx_hal_sai_ex.c
    # ${CMAKE_CURRENT_LIST_DIR}/STM32WBxx_HAL_Driver/Src/stm32wbxx_hal_smartcard.c
    # ${CMAKE_CURRENT_LIST_DIR}/STM32WBxx_HAL_Driver/Src/stm32wbxx_hal_smartcard_ex.c
    # ${CMAKE_CURRENT_LIST_DIR}/STM32WBxx_HAL_Driver/Src/stm32wbxx_hal_smbus.c
    # ${CMAKE_CURRENT_LIST_DIR}/STM32WBxx_HAL_Driver/Src/stm32wbxx_hal_smbus_ex.c
    # ${CMAKE_CURRENT_LIST_DIR}/STM32WBxx_HAL_Driver/Src/stm32wbxx_hal_spi.c
    # ${CMAKE_CURRENT_LIST_DIR}/STM32WBxx_HAL_Driver/Src/stm32wbxx_hal_spi_ex.c
    ${CMAKE_CURRENT_LIST_DIR}/STM32WBxx_HAL_Driver/Src/stm32wbxx_hal_tim.c
    ${CMAKE_CURRENT_LIST_DIR}/STM32WBxx_HAL_Driver/Src/stm32wbxx_hal_tim_ex.c
    # ${CMAKE_CURRENT_LIST_DIR}/STM32WBxx_HAL_Driver/Src/stm32wbxx_hal_timebase_rtc_alarm_template.c
    # ${CMAKE_CURRENT_LIST_DIR}/STM32WBxx_HAL_Driver/Src/stm32wbxx_hal_timebase_rtc_wakeup_template.c
    # ${CMAKE_CURRENT_LIST_DIR}/STM32WBxx_HAL_Driver/Src/stm32wbxx_hal_timebase_tim_template.c
    # ${CMAKE_CURRENT_LIST_DIR}/STM32WBxx_HAL_Driver/Src/stm32wbxx_hal_tsc.c
    ${CMAKE_CURRENT_LIST_DIR}/STM32WBxx_HAL_Driver/Src/stm32wbxx_hal_uart.c
    ${CMAKE_CURRENT_LIST_DIR}/STM32WBxx_HAL_Driver/Src/stm32wbxx_hal_uart_ex.c
    # ${CMAKE_CURRENT_LIST_DIR}/STM32WBxx_HAL_Driver/Src/stm32wbxx_hal_usart.c
    # ${CMAKE_CURRENT_LIST_DIR}/STM32WBxx_HAL_Driver/Src/stm32wbxx_hal_usart_ex.c
    # ${CMAKE_CURRENT_LIST_DIR}/STM32WBxx_HAL_Driver/Src/stm32wbxx_hal_wwdg.c
    ${CMAKE_CURRENT_LIST_DIR}/STM32WBxx_HAL_Driver/Src/stm32wbxx_ll_adc.c
    ${CMAKE_CURRENT_LIST_DIR}/STM32WBxx_HAL_Driver/Src/stm32wbxx_ll_rcc.c

)

set (srcs "${srcs}" PARENT_SCOPE)
set (libdeps "${libdeps}" PARENT_SCOPE)
