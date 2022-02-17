//------------------------------------------------------------------------------
// Generated: 13-01-24 14:03:48
//------------------------------------------------------------------------------

#include <B2_RAD_WB.h>

#define DATA(base) ((volatile uint32_t *) base)

#define IRQ_PULSES_ADDR_OFFSET 0x7
#define HK_ADCDIV_ADDR_OFFSET  0x0
#define HK_C1V2_ADDR_OFFSET    0x8
#define HK_C3V3_ADDR_OFFSET    0x9
#define HK_TEMP1_ADDR_OFFSET   0xA
#define HK_TEMP2_ADDR_OFFSET   0xB
#define HK_V1V2_ADDR_OFFSET    0xC
#define POWER_ADDR_OFFSET      0x1
#define ADC_GO_ADDR_OFFSET     0x7
#define ADC_STAT_ADDR_OFFSET   0xD
#define ADC_CLKDIV_ADDR_OFFSET 0x2
#define ADC_ADDR_ADDR_OFFSET   0x3
#define PF_PWM_ADDR_OFFSET     0x4
#define RF_CURR_ADDR_OFFSET    0x5
#define RF_HEAT_PWM_ADDR_OFFSET 0x6

//------------------------------------------------------------------------------
// Functions for the register: IRQ_PULSES
//------------------------------------------------------------------------------

uint32_t wb_interface_get_irq_pulses(
    uint32_t a_addr_base
)
{
    return DATA(a_addr_base)[IRQ_PULSES_ADDR_OFFSET];
}

//------------------------------------------------------------------------------
// Functions for the register: HK_adcdiv
//------------------------------------------------------------------------------

uint32_t wb_interface_get_hk_adcdiv(
    uint32_t a_addr_base
)
{
    return DATA(a_addr_base)[HK_ADCDIV_ADDR_OFFSET];
}

void wb_interface_set_hk_adcdiv(
    uint32_t a_addr_base,
    uint32_t a_value
)
{
    DATA(a_addr_base)[HK_ADCDIV_ADDR_OFFSET] = a_value;
}

//------------------------------------------------------------------------------
// Functions for the register: HK_C1V2
//------------------------------------------------------------------------------

uint32_t wb_interface_get_hk_c1v2(
    uint32_t a_addr_base
)
{
    return DATA(a_addr_base)[HK_C1V2_ADDR_OFFSET];
}

//------------------------------------------------------------------------------
// Functions for the register: HK_C3V3
//------------------------------------------------------------------------------

uint32_t wb_interface_get_hk_c3v3(
    uint32_t a_addr_base
)
{
    return DATA(a_addr_base)[HK_C3V3_ADDR_OFFSET];
}

//------------------------------------------------------------------------------
// Functions for the register: HK_TEMP1
//------------------------------------------------------------------------------

uint32_t wb_interface_get_hk_temp1(
    uint32_t a_addr_base
)
{
    return DATA(a_addr_base)[HK_TEMP1_ADDR_OFFSET];
}

//------------------------------------------------------------------------------
// Functions for the register: HK_TEMP2
//------------------------------------------------------------------------------

uint32_t wb_interface_get_hk_temp2(
    uint32_t a_addr_base
)
{
    return DATA(a_addr_base)[HK_TEMP2_ADDR_OFFSET];
}

//------------------------------------------------------------------------------
// Functions for the register: HK_V1V2
//------------------------------------------------------------------------------

uint32_t wb_interface_get_hk_v1v2(
    uint32_t a_addr_base
)
{
    return DATA(a_addr_base)[HK_V1V2_ADDR_OFFSET];
}

//------------------------------------------------------------------------------
// Functions for the register: POWER
//------------------------------------------------------------------------------

uint32_t wb_interface_get_power(
    uint32_t a_addr_base
)
{
    return DATA(a_addr_base)[POWER_ADDR_OFFSET];
}

uint32_t wb_interface_get_power_rf_irr(
    uint32_t a_addr_base
)
{
    return ((DATA(a_addr_base)[POWER_ADDR_OFFSET] & 0x80) >> 7);
}

uint32_t wb_interface_get_power_rf1_bias(
    uint32_t a_addr_base
)
{
    return ((DATA(a_addr_base)[POWER_ADDR_OFFSET] & 0x40) >> 6);
}

uint32_t wb_interface_get_power_rf2_bias(
    uint32_t a_addr_base
)
{
    return ((DATA(a_addr_base)[POWER_ADDR_OFFSET] & 0x20) >> 5);
}

uint32_t wb_interface_get_power_rf3_bias(
    uint32_t a_addr_base
)
{
    return ((DATA(a_addr_base)[POWER_ADDR_OFFSET] & 0x10) >> 4);
}

uint32_t wb_interface_get_power_rf4_bias(
    uint32_t a_addr_base
)
{
    return ((DATA(a_addr_base)[POWER_ADDR_OFFSET] & 0x8) >> 3);
}

uint32_t wb_interface_get_power_rf_heat_on(
    uint32_t a_addr_base
)
{
    return ((DATA(a_addr_base)[POWER_ADDR_OFFSET] & 0x4) >> 2);
}

uint32_t wb_interface_get_power_sdram_en(
    uint32_t a_addr_base
)
{
    return ((DATA(a_addr_base)[POWER_ADDR_OFFSET] & 0x2) >> 1);
}

uint32_t wb_interface_get_power_flash_en(
    uint32_t a_addr_base
)
{
    return (DATA(a_addr_base)[POWER_ADDR_OFFSET] & 0x1);
}

void wb_interface_set_power(
    uint32_t a_addr_base,
    uint32_t a_value
)
{
    DATA(a_addr_base)[POWER_ADDR_OFFSET] = a_value;
}

void wb_interface_set_power_slices(
    uint32_t a_addr_base,
    uint32_t rf_irr,
    uint32_t rf1_bias,
    uint32_t rf2_bias,
    uint32_t rf3_bias,
    uint32_t rf4_bias,
    uint32_t rf_heat_on,
    uint32_t sdram_en,
    uint32_t flash_en
)
{
    DATA(a_addr_base)[POWER_ADDR_OFFSET] = 
        ((rf_irr << 7) & 0x80) | 
        ((rf1_bias << 6) & 0x40) | 
        ((rf2_bias << 5) & 0x20) | 
        ((rf3_bias << 4) & 0x10) | 
        ((rf4_bias << 3) & 0x8) | 
        ((rf_heat_on << 2) & 0x4) | 
        ((sdram_en << 1) & 0x2) | 
        (flash_en & 0x1);
}

//------------------------------------------------------------------------------
// Functions for the command set: ADC_GO
//------------------------------------------------------------------------------

void wb_interface_adc_go_cl0_go(
    uint32_t a_addr_base
)
{
    DATA(a_addr_base)[ADC_GO_ADDR_OFFSET] = 0x0;
}

//------------------------------------------------------------------------------
// Functions for the register: ADC_STAT
//------------------------------------------------------------------------------

uint32_t wb_interface_get_adc_stat(
    uint32_t a_addr_base
)
{
    return DATA(a_addr_base)[ADC_STAT_ADDR_OFFSET];
}

uint32_t wb_interface_get_adc_stat_ready(
    uint32_t a_addr_base
)
{
    return ((DATA(a_addr_base)[ADC_STAT_ADDR_OFFSET] & 0x8000) >> 15);
}

uint32_t wb_interface_get_adc_stat_val(
    uint32_t a_addr_base
)
{
    return (DATA(a_addr_base)[ADC_STAT_ADDR_OFFSET] & 0xFFF);
}

//------------------------------------------------------------------------------
// Functions for the register: ADC_CLKDIV
//------------------------------------------------------------------------------

uint32_t wb_interface_get_adc_clkdiv(
    uint32_t a_addr_base
)
{
    return DATA(a_addr_base)[ADC_CLKDIV_ADDR_OFFSET];
}

void wb_interface_set_adc_clkdiv(
    uint32_t a_addr_base,
    uint32_t a_value
)
{
    DATA(a_addr_base)[ADC_CLKDIV_ADDR_OFFSET] = a_value;
}

//------------------------------------------------------------------------------
// Functions for the register: ADC_ADDR
//------------------------------------------------------------------------------

uint32_t wb_interface_get_adc_addr(
    uint32_t a_addr_base
)
{
    return DATA(a_addr_base)[ADC_ADDR_ADDR_OFFSET];
}

void wb_interface_set_adc_addr(
    uint32_t a_addr_base,
    uint32_t a_value
)
{
    DATA(a_addr_base)[ADC_ADDR_ADDR_OFFSET] = a_value;
}

//------------------------------------------------------------------------------
// Functions for the register: PF_PWM
//------------------------------------------------------------------------------

uint32_t wb_interface_get_pf_pwm(
    uint32_t a_addr_base
)
{
    return DATA(a_addr_base)[PF_PWM_ADDR_OFFSET];
}

void wb_interface_set_pf_pwm(
    uint32_t a_addr_base,
    uint32_t a_value
)
{
    DATA(a_addr_base)[PF_PWM_ADDR_OFFSET] = a_value;
}

//------------------------------------------------------------------------------
// Functions for the register: RF_CURR
//------------------------------------------------------------------------------

uint32_t wb_interface_get_rf_curr(
    uint32_t a_addr_base
)
{
    return DATA(a_addr_base)[RF_CURR_ADDR_OFFSET];
}

void wb_interface_set_rf_curr(
    uint32_t a_addr_base,
    uint32_t a_value
)
{
    DATA(a_addr_base)[RF_CURR_ADDR_OFFSET] = a_value;
}

//------------------------------------------------------------------------------
// Functions for the register: RF_HEAT_PWM
//------------------------------------------------------------------------------

uint32_t wb_interface_get_rf_heat_pwm(
    uint32_t a_addr_base
)
{
    return DATA(a_addr_base)[RF_HEAT_PWM_ADDR_OFFSET];
}

void wb_interface_set_rf_heat_pwm(
    uint32_t a_addr_base,
    uint32_t a_value
)
{
    DATA(a_addr_base)[RF_HEAT_PWM_ADDR_OFFSET] = a_value;
}

