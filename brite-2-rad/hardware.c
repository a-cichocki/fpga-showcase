#include "hardware.h"

uint8_t num_pulses;
uint8_t powermode;

//uint32_t* sdram = (uint32_t*) 0x2000000;
//volatile uint16_t* flash = (volatile uint16_t*) 0x8000000;

void Hardware_Init(){
    //uart = uart8_open(0);
    WB_UART(0xFF010000)[0]=0x2;
    WB_UART(0xFF010000)[1]=0x75;
    WB_UART(0xFF010000)[2]=0x25;
    // 9600 @ 8Mhz
    ///interrupts_disable();
    // interrupts_enable();
    SET_HK_ADCDIV(0xFFFF);
   // interrupt_register( 1, NULL, interrupt_handler );
   // interrupt_configure( 1, EDGE_RISING );
  //  interrupt_enable( 1 );
    SET_RF_BIAS1_DISABLE;
    SET_RF_BIAS2_DISABLE;
    SET_RF_BIAS3_DISABLE;
    SET_RF_BIAS4_DISABLE;
    SET_RF_CURRENT(0);
    SET_RF_IRRADIATION_ENABLE;
    SET_PLL_DISABLE;
    SET_FLASH_DISABLE;
    SET_SDRAM_DISABLE;
    SET_RF_HEATER_PWM(0);
    SET_RF_HEATER_DISABLE;
    SET_ADCA_CLKDIV(10);
    SET_ADCB_CLKDIV(10);

}
/*
uint32_t interrupt_handler(uint32_t number, void * context )
{
    num_pulses = wb_interface_1_get_irq_pulses();
    interrupt_acknowledge(1);
    return INTERRUPT_HANDLED;
} */

void uart_send(char* data, uint8_t len){
     uint8_t i;
     for(i=0; i< len; i++){
                  while(WB_UART(0xFF010000)[4] & 1);
                  WB_UART(0xFF010000)[7] = data[i];
     }
}
