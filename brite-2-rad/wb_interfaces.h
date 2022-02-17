/*
 *	Software Platform Generated File
 *	--------------------------------
 */

#ifndef _SWP_WB_INTERFACES_H
#define _SWP_WB_INTERFACES_H


//------------------------------------------------------------------------------
// WB_INTERFACE component: WB_INTERFACE_1
//------------------------------------------------------------------------------

#include <stdint.h>

//------------------------------------------------------------------------------
// Functions for the register: IRQ_PULSES
//------------------------------------------------------------------------------

extern uint32_t wb_interface_1_get_irq_pulses(
    void
);

//------------------------------------------------------------------------------
// Functions for the register: HK_adcdiv
//------------------------------------------------------------------------------

extern uint32_t wb_interface_1_get_hk_adcdiv(
    void
);

extern void wb_interface_1_set_hk_adcdiv(
    uint32_t a_value
);

//------------------------------------------------------------------------------
// Functions for the register: HK_C1V2
//------------------------------------------------------------------------------

extern uint32_t wb_interface_1_get_hk_c1v2(
    void
);

//------------------------------------------------------------------------------
// Functions for the register: HK_C3V3
//------------------------------------------------------------------------------

extern uint32_t wb_interface_1_get_hk_c3v3(
    void
);

//------------------------------------------------------------------------------
// Functions for the register: HK_TEMP1
//------------------------------------------------------------------------------

extern uint32_t wb_interface_1_get_hk_temp1(
    void
);

//------------------------------------------------------------------------------
// Functions for the register: HK_TEMP2
//------------------------------------------------------------------------------

extern uint32_t wb_interface_1_get_hk_temp2(
    void
);

//------------------------------------------------------------------------------
// Functions for the register: HK_V1V2
//------------------------------------------------------------------------------

extern uint32_t wb_interface_1_get_hk_v1v2(
    void
);

//------------------------------------------------------------------------------
// Functions for the register: POWER
//------------------------------------------------------------------------------

extern uint32_t wb_interface_1_get_power(
    void
);

extern uint32_t wb_interface_1_get_power_pll_on(
    void
);

extern uint32_t wb_interface_1_get_power_rf_irr(
    void
);

extern uint32_t wb_interface_1_get_power_rf1_bias(
    void
);

extern uint32_t wb_interface_1_get_power_rf2_bias(
    void
);

extern uint32_t wb_interface_1_get_power_rf3_bias(
    void
);

extern uint32_t wb_interface_1_get_power_rf4_bias(
    void
);

extern uint32_t wb_interface_1_get_power_rf_heat_on(
    void
);

extern uint32_t wb_interface_1_get_power_sdram_en(
    void
);

extern uint32_t wb_interface_1_get_power_flash_en(
    void
);

extern void wb_interface_1_set_power(
    uint32_t a_value
);

extern void wb_interface_1_set_power_slices(
    uint32_t pll_on,
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
// Functions for the command set: ADCA_GO
//------------------------------------------------------------------------------

extern void wb_interface_1_adca_go_cl0_go(
    void
);

//------------------------------------------------------------------------------
// Functions for the register: ADCA_STAT
//------------------------------------------------------------------------------

extern uint32_t wb_interface_1_get_adca_stat(
    void
);

extern uint32_t wb_interface_1_get_adca_stat_ready(
    void
);

extern uint32_t wb_interface_1_get_adca_stat_val(
    void
);

//------------------------------------------------------------------------------
// Functions for the register: ADCA_CLKDIV
//------------------------------------------------------------------------------

extern uint32_t wb_interface_1_get_adca_clkdiv(
    void
);

extern void wb_interface_1_set_adca_clkdiv(
    uint32_t a_value
);

//------------------------------------------------------------------------------
// Functions for the register: ADCA_ADDR
//------------------------------------------------------------------------------

extern uint32_t wb_interface_1_get_adca_addr(
    void
);

extern void wb_interface_1_set_adca_addr(
    uint32_t a_value
);

//------------------------------------------------------------------------------
// Functions for the register: PF1_PWM
//------------------------------------------------------------------------------

extern uint32_t wb_interface_1_get_pf1_pwm(
    void
);

extern void wb_interface_1_set_pf1_pwm(
    uint32_t a_value
);

//------------------------------------------------------------------------------
// Functions for the register: RF_CURR
//------------------------------------------------------------------------------

extern uint32_t wb_interface_1_get_rf_curr(
    void
);

extern void wb_interface_1_set_rf_curr(
    uint32_t a_value
);

//------------------------------------------------------------------------------
// Functions for the register: RF_HEAT_PWM
//------------------------------------------------------------------------------

extern uint32_t wb_interface_1_get_rf_heat_pwm(
    void
);

extern void wb_interface_1_set_rf_heat_pwm(
    uint32_t a_value
);

//------------------------------------------------------------------------------
// Functions for the register: PF2_PWM
//------------------------------------------------------------------------------

extern uint32_t wb_interface_1_get_pf2_pwm(
    void
);

extern void wb_interface_1_set_pf2_pwm(
    uint32_t a_value
);

//------------------------------------------------------------------------------
// Functions for the command set: ADCB_GO
//------------------------------------------------------------------------------

extern void wb_interface_1_adcb_go_cl0_go(
    void
);

//------------------------------------------------------------------------------
// Functions for the register: ADCB_STAT
//------------------------------------------------------------------------------

extern uint32_t wb_interface_1_get_adcb_stat(
    void
);

extern uint32_t wb_interface_1_get_adcb_stat_ready(
    void
);

extern uint32_t wb_interface_1_get_adcb_stat_val(
    void
);

//------------------------------------------------------------------------------
// Functions for the register: ADCB_CLKDIV
//------------------------------------------------------------------------------

extern uint32_t wb_interface_1_get_adcb_clkdiv(
    void
);

extern void wb_interface_1_set_adcb_clkdiv(
    uint32_t a_value
);

//------------------------------------------------------------------------------
// Functions for the register: ADCB_ADDR
//------------------------------------------------------------------------------

extern uint32_t wb_interface_1_get_adcb_addr(
    void
);

extern void wb_interface_1_set_adcb_addr(
    uint32_t a_value
);

//------------------------------------------------------------------------------
// Functions for the register: ADCC_CMD
//------------------------------------------------------------------------------

extern uint32_t wb_interface_1_get_adcc_cmd(
    void
);

extern uint32_t wb_interface_1_get_adcc_cmd_en(
    void
);

extern uint32_t wb_interface_1_get_adcc_cmd_addr(
    void
);

extern void wb_interface_1_set_adcc_cmd(
    uint32_t a_value
);

extern void wb_interface_1_set_adcc_cmd_slices(
    uint32_t en,
    uint32_t addr
);

//------------------------------------------------------------------------------
// Functions for the register: ADCC_VAL
//------------------------------------------------------------------------------

extern uint32_t wb_interface_1_get_adcc_val(
    void
);

//------------------------------------------------------------------------------
// Functions for the register: TIME
//------------------------------------------------------------------------------

extern uint32_t wb_interface_1_get_time(
    void
);

//------------------------------------------------------------------------------
// Functions for the register: IRQ_SIG
//------------------------------------------------------------------------------

extern uint32_t wb_interface_1_get_irq_sig(
    void
);

extern void wb_interface_1_set_irq_sig(
    uint32_t a_value
);

#endif
