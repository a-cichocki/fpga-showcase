#ifndef HARDWARE__H
#define HARDWARE__H
    #include <stdint.h>
  //  #include <wb_interfaces.h>

    #define WB_INTERFACE_1_DATA(base) ((volatile uint32_t *) base)
    #define WB_UART(base) ((volatile uint8_t *) base)

    #define WB_INTERFACE_1_IRQ_PULSES_ADDR_OFFSET 0xC
    #define WB_INTERFACE_1_HK_ADCDIV_ADDR_OFFSET 0x0
    #define WB_INTERFACE_1_HK_C1V2_ADDR_OFFSET 0xD
    #define WB_INTERFACE_1_HK_C3V3_ADDR_OFFSET 0xE
    #define WB_INTERFACE_1_HK_TEMP1_ADDR_OFFSET 0xF
    #define WB_INTERFACE_1_HK_TEMP2_ADDR_OFFSET 0x10
    #define WB_INTERFACE_1_HK_V1V2_ADDR_OFFSET 0x11
    #define WB_INTERFACE_1_POWER_ADDR_OFFSET 0x1
    #define WB_INTERFACE_1_ADCA_GO_ADDR_OFFSET          0x0C
    #define WB_INTERFACE_1_ADCA_STAT_ADDR_OFFSET        0x12
    #define WB_INTERFACE_1_ADCA_CLKDIV_ADDR_OFFSET      0x02
    #define WB_INTERFACE_1_ADCA_ADDR_ADDR_OFFSET        0x03
    #define WB_INTERFACE_1_PF1_PWM_ADDR_OFFSET 0x4
    #define WB_INTERFACE_1_PF2_PWM_ADDR_OFFSET 0x7
    #define WB_INTERFACE_1_RF_CURR_ADDR_OFFSET 0x5
    #define WB_INTERFACE_1_RF_HEAT_PWM_ADDR_OFFSET 0x6
    #define WB_INTERFACE_1_TIME_ADDR_OFFSET 0x15
    #define WB_INTERFACE_1_IRQ_SIG_ADDR_OFFSET 0xB

    #define WB_INTERFACE_1_ADCB_GO_ADDR_OFFSET          0x0D
    #define WB_INTERFACE_1_ADCB_STAT_ADDR_OFFSET        0x13
    #define WB_INTERFACE_1_ADCB_CLKDIV_ADDR_OFFSET      0x08
    #define WB_INTERFACE_1_ADCB_ADDR_ADDR_OFFSET        0x09

    #define WB_INTERFACE_1_ADCC_CMD_ADDR_OFFSET         0xA
    #define WB_INTERFACE_1_ADCC_VAL_ADDR_OFFSET         0x14

    #define GET_TIME                    (WB_INTERFACE_1_DATA(0xFF020000)[WB_INTERFACE_1_TIME_ADDR_OFFSET])


    #define SET_HK_ADCDIV(x)               WB_INTERFACE_1_DATA(0xFF020000)[WB_INTERFACE_1_HK_ADCDIV_ADDR_OFFSET] = x
    #define SET_IRQ_SIG(x)                 WB_INTERFACE_1_DATA(0xFF020000)[WB_INTERFACE_1_IRQ_SIG_ADDR_OFFSET] = x
    #define GET_IRQ_SIG                    WB_INTERFACE_1_DATA(0xFF020000)[WB_INTERFACE_1_IRQ_SIG_ADDR_OFFSET]
    #define GET_IRQ_PULSES                 WB_INTERFACE_1_DATA(0xFF020000)[WB_INTERFACE_1_IRQ_PULSES_ADDR_OFFSET]



    #define GET_HK_C1V2                    WB_INTERFACE_1_DATA(0xFF020000)[WB_INTERFACE_1_HK_C1V2_ADDR_OFFSET]
    #define GET_HK_C3V3                    WB_INTERFACE_1_DATA(0xFF020000)[WB_INTERFACE_1_HK_C3V3_ADDR_OFFSET]
    #define GET_HK_TEMP1                   WB_INTERFACE_1_DATA(0xFF020000)[WB_INTERFACE_1_HK_TEMP1_ADDR_OFFSET]
    #define GET_HK_TEMP2                   WB_INTERFACE_1_DATA(0xFF020000)[WB_INTERFACE_1_HK_TEMP2_ADDR_OFFSET]
    #define GET_HK_V1V2                    WB_INTERFACE_1_DATA(0xFF020000)[WB_INTERFACE_1_HK_V1V2_ADDR_OFFSET]


    #define SET_PLL_ENABLE              WB_INTERFACE_1_DATA(0xFF020000)[WB_INTERFACE_1_POWER_ADDR_OFFSET] |=  0x100
    #define SET_PLL_DISABLE             WB_INTERFACE_1_DATA(0xFF020000)[WB_INTERFACE_1_POWER_ADDR_OFFSET] &=  (0xFFFFFFFF ^ 0x100)
    #define SET_RF_IRRADIATION_ENABLE   WB_INTERFACE_1_DATA(0xFF020000)[WB_INTERFACE_1_POWER_ADDR_OFFSET] |=  0x80
    #define SET_RF_IRRADIATION_DISABLE  WB_INTERFACE_1_DATA(0xFF020000)[WB_INTERFACE_1_POWER_ADDR_OFFSET] &=  (0xFFFFFFFF ^ 0x80)
    #define SET_RF_BIAS1_ENABLE         WB_INTERFACE_1_DATA(0xFF020000)[WB_INTERFACE_1_POWER_ADDR_OFFSET] |=  0x40
    #define SET_RF_BIAS1_DISABLE        WB_INTERFACE_1_DATA(0xFF020000)[WB_INTERFACE_1_POWER_ADDR_OFFSET] &=  (0xFFFFFFFF ^ 0x40)
    #define SET_RF_BIAS2_ENABLE         WB_INTERFACE_1_DATA(0xFF020000)[WB_INTERFACE_1_POWER_ADDR_OFFSET] |=  0x20
    #define SET_RF_BIAS2_DISABLE        WB_INTERFACE_1_DATA(0xFF020000)[WB_INTERFACE_1_POWER_ADDR_OFFSET] &=  (0xFFFFFFFF ^ 0x20)
    #define SET_RF_BIAS3_ENABLE         WB_INTERFACE_1_DATA(0xFF020000)[WB_INTERFACE_1_POWER_ADDR_OFFSET] |=  0x10
    #define SET_RF_BIAS3_DISABLE        WB_INTERFACE_1_DATA(0xFF020000)[WB_INTERFACE_1_POWER_ADDR_OFFSET] &=  (0xFFFFFFFF ^ 0x10)
    #define SET_RF_BIAS4_ENABLE         WB_INTERFACE_1_DATA(0xFF020000)[WB_INTERFACE_1_POWER_ADDR_OFFSET] |=  0x8
    #define SET_RF_BIAS4_DISABLE        WB_INTERFACE_1_DATA(0xFF020000)[WB_INTERFACE_1_POWER_ADDR_OFFSET] &=  (0xFFFFFFFF ^ 0x8)
    #define SET_RF_HEATER_ENABLE        WB_INTERFACE_1_DATA(0xFF020000)[WB_INTERFACE_1_POWER_ADDR_OFFSET] |=  0x4
    #define SET_RF_HEATER_DISABLE       WB_INTERFACE_1_DATA(0xFF020000)[WB_INTERFACE_1_POWER_ADDR_OFFSET] &=  (0xFFFFFFFF ^ 0x4)
    #define SET_RF_CURRENT(x)           WB_INTERFACE_1_DATA(0xFF020000)[WB_INTERFACE_1_RF_CURR_ADDR_OFFSET] = x
    #define SET_RF_HEATER_PWM(x)        WB_INTERFACE_1_DATA(0xFF020000)[WB_INTERFACE_1_RF_HEAT_PWM_ADDR_OFFSET] = x

    #define GET_RF_HEATER_PWM           ((WB_INTERFACE_1_DATA(0xFF020000)[WB_INTERFACE_1_RF_HEAT_PWM_ADDR_OFFSET]) & 0xFF)


    #define SET_PF1_CURRENT(x)           WB_INTERFACE_1_DATA(0xFF020000)[WB_INTERFACE_1_PF1_PWM_ADDR_OFFSET] = x
    #define SET_PF2_CURRENT(x)           WB_INTERFACE_1_DATA(0xFF020000)[WB_INTERFACE_1_PF2_PWM_ADDR_OFFSET] = x

    #define SET_SDRAM_ENABLE            WB_INTERFACE_1_DATA(0xFF020000)[WB_INTERFACE_1_POWER_ADDR_OFFSET] |=  0x2
    #define SET_SDRAM_DISABLE           WB_INTERFACE_1_DATA(0xFF020000)[WB_INTERFACE_1_POWER_ADDR_OFFSET] &=  (0xFFFFFFFF ^ 0x2)
    #define SET_FLASH_ENABLE            WB_INTERFACE_1_DATA(0xFF020000)[WB_INTERFACE_1_POWER_ADDR_OFFSET] |=  0x1
    #define SET_FLASH_DISABLE           WB_INTERFACE_1_DATA(0xFF020000)[WB_INTERFACE_1_POWER_ADDR_OFFSET] &=  (0xFFFFFFFF ^ 0x1)


    #define IS_ADCA_READY                ((WB_INTERFACE_1_DATA(0xFF020000)[WB_INTERFACE_1_ADCA_STAT_ADDR_OFFSET] & 0x8000) >> 15)
    #define SET_ADCA_CLKDIV(x)           WB_INTERFACE_1_DATA(0xFF020000)[WB_INTERFACE_1_ADCA_CLKDIV_ADDR_OFFSET] = x
    #define START_ADCA_MEASURE(ch)       {WB_INTERFACE_1_DATA(0xFF020000)[WB_INTERFACE_1_ADCA_ADDR_ADDR_OFFSET] = ch; WB_INTERFACE_1_DATA(0xFF020000)[WB_INTERFACE_1_ADCA_GO_ADDR_OFFSET] = 0x0; \
                                            while(!IS_ADCA_READY);}
    #define GET_ADCA_VALUE               (WB_INTERFACE_1_DATA(0xFF020000)[WB_INTERFACE_1_ADCA_STAT_ADDR_OFFSET] & 0xFFF)

    #define IS_ADCB_READY                ((WB_INTERFACE_1_DATA(0xFF020000)[WB_INTERFACE_1_ADCB_STAT_ADDR_OFFSET] & 0x8000) >> 15)
    #define SET_ADCB_CLKDIV(x)           WB_INTERFACE_1_DATA(0xFF020000)[WB_INTERFACE_1_ADCB_CLKDIV_ADDR_OFFSET] = x
    #define START_ADCB_MEASURE(ch)       {WB_INTERFACE_1_DATA(0xFF020000)[WB_INTERFACE_1_ADCB_ADDR_ADDR_OFFSET] = ch; WB_INTERFACE_1_DATA(0xFF020000)[WB_INTERFACE_1_ADCB_GO_ADDR_OFFSET] = 0x0; \
                                            while(!IS_ADCB_READY);}
    #define GET_ADCB_VALUE               (WB_INTERFACE_1_DATA(0xFF020000)[WB_INTERFACE_1_ADCB_STAT_ADDR_OFFSET] & 0xFFF)



    #define ADCC_ADDR_RF_VOLTN          0
    #define ADCC_ADDR_RF_VOLTP          1
    #define ADCC_ADDR_3V3               2
    #define ADCC_ADDR_RF_TEMP           3

    #define SET_ADCC_ADDR(x)            WB_INTERFACE_1_DATA(0xFF020000)[WB_INTERFACE_1_ADCC_CMD_ADDR_OFFSET] = 0x80 | x
    #define SET_ADCC_DISABLE            WB_INTERFACE_1_DATA(0xFF020000)[WB_INTERFACE_1_ADCC_CMD_ADDR_OFFSET] = 0x0
    #define GET_ADCC_VALUE              ((WB_INTERFACE_1_DATA(0xFF020000)[WB_INTERFACE_1_ADCC_VAL_ADDR_OFFSET]) & 0x3FFF)

    #define GET_IRQ_PULSES              WB_INTERFACE_1_DATA(0xFF020000)[WB_INTERFACE_1_IRQ_PULSES_ADDR_OFFSET]


    #define  PF1_V_ADDR    0
    #define  PF1_C_ADDR    1
    #define  PF2_V_ADDR    2
    #define  PF2_C_ADDR    3
    #define  RF_VP_ADDR    4
    #define  RF_VN_ADDR    5
    #define  REF_ADDR      6
    #define  GND_ADDR      7

    #define HIGH_POWER 1
    #define LOW_POWER 0


    extern uint8_t num_pulses;
    extern uint8_t powermode;
    //SDRAM is 8Mx32
    #define SDRAM_SIZE 8*1024*1024UL
    #define FLASH_SIZE 1024*1024UL


    void Hardware_Init(void);
    uint32_t interrupt_handler(uint32_t number, void * context );
    void uart_send(char* data, uint8_t len);
#endif
