#include <stdint.h>
#include "hardware.h"
#include "tasks.h"
#include "packet.h"
#include "tests.h"


void Handle_Communication(void){
     if (GET_IRQ_SIG == 1)
        num_pulses = GET_IRQ_PULSES;
     SET_IRQ_SIG(1);
     SET_IRQ_SIG(0);
     switch (num_pulses){
        case 1:
            TM_Send();
            powermode = HIGH_POWER;
            break;
        case 2:
            TM_Send();
            powermode = LOW_POWER;
            break;
        case 3:
            TestPacket_Send();
            powermode = HIGH_POWER;
            break;
        case 4:
            TestPacket_Send();
            powermode = LOW_POWER;
            break;
        case 5:
            do_sfft();
            TestPacket_Send();
            break;
        case 6:
            do_lfft();
            TestPacket_Send();
            break;
    }
    num_pulses = 0;
}





int main(){
    Hardware_Init();
    powermode = HIGH_POWER;
    Tasks_Init();
    Tasks_Add(Handle_Communication, 10);
    Tasks_Add(TM_Update, 1000);
    Tasks_Add(Test_Handle, 100);
    Tasks_Add(RADFET_Measure, 0);
    Tasks_Add(Photofoils_Measure, 0);
    Tasks_Add(SDRAM_Measure, 0);
    Tasks_Add(FLASH_Measure, 0);
    Tasks_Add(ADC_Measure, 0);
    Tests_Init();
    while(1){
        Tasks_Run();
    }
}
