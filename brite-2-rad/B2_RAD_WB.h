//------------------------------------------------------------------------------
// Generated: 13-01-24 14:03:48
//------------------------------------------------------------------------------

#ifndef __B2_RAD_WB__WB_INTERFACE_H__
#define __B2_RAD_WB__WB_INTERFACE_H__

//------------------------------------------------------------------------------
// Note: a_addr_base is the base address of the custom wishbone interface,
// defined in hardware.h
//------------------------------------------------------------------------------

#include <stdint.h>

//------------------------------------------------------------------------------
// Functions for the register: IRQ_PULSES
//------------------------------------------------------------------------------

extern uint32_t wb_interface_get_irq_pulses(
    uint32_t a_addr_base
);

//------------------------------------------------------------------------------
// Functions for the register: HK_adcdiv
//------------------------------------------------------------------------------

extern uint32_t wb_interface_get_hk_adcdiv(
    uint32_t a_addr_base
);

extern void wb_interface_set_hk_adcdiv(
    uint32_t a_addr_base,
    uint32_t a_value
);

//------------------------------------------------------------------------------
// Functions for the register: HK_C1V2
//------------------------------------------------------------------------------

extern uint32_t wb_interface_get_hk_c1v2(
    uint32_t a_addr_base
);

//------------------------------------------------------------------------------
// Functions for the register: HK_C3V3
//------------------------------------------------------------------------------

extern uint32_t wb_interface_get_hk_c3v3(
    uint32_t a_addr_base
);

//------------------------------------------------------------------------------
// Functions for the register: HK_TEMP1
//------------------------------------------------------------------------------

extern uint32_t wb_interface_get_hk_temp1(
    uint32_t a_addr_base
);

//------------------------------------------------------------------------------
// Functions for the register: HK_TEMP2
//------------------------------------------------------------------------------

extern uint32_t wb_interface_get_hk_temp2(
    uint32_t a_addr_base
);

//------------------------------------------------------------------------------
// Functions for the register: HK_V1V2
//------------------------------------------------------------------------------

extern uint32_t wb_interface_get_hk_v1v2(
    uint32_t a_addr_base
);

//------------------------------------------------------------------------------
// Functions for the register: POWER
//------------------------------------------------------------------------------

extern uint32_t wb_interface_get_power(
    uint32_t a_addr_base
);

extern uint32_t wb_interface_get_power_rf_irr(
    uint32_t a_addr_base
);

extern uint32_t wb_interface_get_power_rf1_bias(
    uint32_t a_addr_base
);

extern uint32_t wb_interface_get_power_rf2_bias(
    uint32_t a_addr_base
);

extern uint32_t wb_interface_get_power_rf3_bias(
    uint32_t a_addr_base
);

extern uint32_t wb_interface_get_power_rf4_bias(
    uint32_t a_addr_base
);

extern uint32_t wb_interface_get_power_rf_heat_on(
    uint32_t a_addr_base
);

extern uint32_t wb_interface_get_power_sdram_en(
    uint32_t a_addr_base
);

extern uint32_t wb_interface_get_power_flash_en(
    uint32_t a_addr_base
);

extern void wb_interface_set_power(
    uint32_t a_addr_base,
    uint32_t a_value
);

extern void wb_interface_set_power_slices(
    uint32_t a_addr_base,
    uint32_t rf_irr,
    uint32_t rf1_bias,
    uint32_t rf2_bias,
    uint32_t rf3_bias,
    uint32_t rf4_bias,
    uint32_t rf_heat_on,
    uint32_t sdram_en,
    uint32_t flash_en
);

//------------------------------------------------------------------------------
// Functions for the command set: ADC_GO
//------------------------------------------------------------------------------

extern void wb_interface_adc_go_cl0_go(
    uint32_t a_addr_base
);

//------------------------------------------------------------------------------
// Functions for the register: ADC_STAT
//------------------------------------------------------------------------------

extern uint32_t wb_interface_get_adc_stat(
    uint32_t a_addr_base
);

extern uint32_t wb_interface_get_adc_stat_ready(
    uint32_t a_addr_base
);

extern uint32_t wb_interface_get_adc_stat_val(
    uint32_t a_addr_base
);

//------------------------------------------------------------------------------
// Functions for the register: ADC_CLKDIV
//------------------------------------------------------------------------------

extern uint32_t wb_interface_get_adc_clkdiv(
    uint32_t a_addr_base
);

extern void wb_interface_set_adc_clkdiv(
    uint32_t a_addr_base,
    uint32_t a_value
);

//------------------------------------------------------------------------------
// Functions for the register: ADC_ADDR
//------------------------------------------------------------------------------

extern uint32_t wb_interface_get_adc_addr(
    uint32_t a_addr_base
);

extern void wb_interface_set_adc_addr(
    uint32_t a_addr_base,
    uint32_t a_value
);

//------------------------------------------------------------------------------
// Functions for the register: PF_PWM
//------------------------------------------------------------------------------

extern uint32_t wb_interface_get_pf_pwm(
    uint32_t a_addr_base
);

extern void wb_interface_set_pf_pwm(
    uint32_t a_addr_base,
    uint32_t a_value
);

//------------------------------------------------------------------------------
// Functions for the register: RF_CURR
//------------------------------------------------------------------------------

extern uint32_t wb_interface_get_rf_curr(
    uint32_t a_addr_base
);

extern void wb_interface_set_rf_curr(
    uint32_t a_addr_base,
    uint32_t a_value
);

//------------------------------------------------------------------------------
// Functions for the register: RF_HEAT_PWM
//------------------------------------------------------------------------------

extern uint32_t wb_interface_get_rf_heat_pwm(
    uint32_t a_addr_base
);

extern void wb_interface_set_rf_heat_pwm(
    uint32_t a_addr_base,
    uint32_t a_value
);


#endif // __B2_RAD_WB__WB_INTERFACE_H__
