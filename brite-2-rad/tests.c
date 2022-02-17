#include <stdint.h>
#include <string.h>
#include "tests.h"
#include "tasks.h"
#include "packet.h"
#include "hardware.h"


Tests_t CurrentTests;
volatile SDRAM_Data_t SDRAM_Data;
volatile PF_Data_t PF_Data;

volatile uint32_t* sdram = (volatile uint32_t*) 0x2000000;
volatile uint16_t* flash = (volatile uint16_t*) 0x8000000;

uint8_t SPacketNumber = 0;


void Save_Power(void){
    Tasks_Reschedule(Photofoils_Measure, 0);
    Tasks_Reschedule(RADFET_Measure, 0);
    Tasks_Reschedule(SDRAM_Measure, 0);
    Tasks_Reschedule(FLASH_Measure, 0);
    Tasks_Reschedule(ADC_Measure, 0);
    SET_PLL_DISABLE;
    SET_SDRAM_DISABLE;
    SET_RF_BIAS1_DISABLE;
    SET_RF_BIAS2_DISABLE;
    SET_RF_BIAS3_DISABLE;
    SET_RF_BIAS4_DISABLE;
    SET_RF_CURRENT(0);
    SET_RF_IRRADIATION_ENABLE;
    SET_PLL_DISABLE;
    SET_FLASH_DISABLE;
    SET_RF_HEATER_PWM(0);
    SET_RF_HEATER_DISABLE;
    SET_PF1_CURRENT(0);
    SET_PF2_CURRENT(0);
}


void SDRAM_Measure(void){
    uint32_t CurTime;
    static uint8_t BadAddrCnt=0;
    CurTime =  GET_TIME;
    switch(CurrentTests.State){
        case SDRAM_Start:
             memcpy((uint8_t*)&SDRAM_Data,CurrentTestPacket.TestData,sizeof(CurrentTestPacket.TestData));
             Tasks_Reschedule(SDRAM_Measure, 10);
             CurrentTests.State = SDRAM_FF_WR;
             CurrentTests.Address = 0;
             BadAddrCnt = 0;
             break;
        case SDRAM_FF_WR:
            while (GET_TIME < CurTime + 9 ){
                if (CurrentTests.Address  <= SDRAM_SIZE >> 2  ){
                   if (CurrentTests.Address != 0x100)
                      sdram[CurrentTests.Address] = 0xFFFFFFFF;
                   else
                      sdram[CurrentTests.Address] = 0x12FFFFFF;
                   CurrentTests.Address++;
                }
                else{
                    CurrentTests.State = SDRAM_FF_RD;
                    if (CurrentTests.Status == STATUS_SDRAM_RW)
                       Tasks_Reschedule(SDRAM_Measure, 10);
                    else
                        Tasks_Reschedule(SDRAM_Measure, TESTTIME_SDRAM_STORAGE >> 3);

                    Tasks_Reschedule(SDRAM_Measure, 10);
                    CurrentTests.Address = 0;
                }
            }
            break;
        case SDRAM_FF_RD:
            while (GET_TIME < CurTime + 9 ){
                Tasks_Reschedule(SDRAM_Measure, 10);
                if (CurrentTests.Address  <= SDRAM_SIZE >> 2 ){
                    if (sdram[CurrentTests.Address] != 0xFFFFFFFF){
                        SDRAM_Data.ErrorsFF++;
                        SDRAM_Data.Addresses[BadAddrCnt] = CurrentTests.Address;
                        BadAddrCnt = (BadAddrCnt + 1) % 8;
                    }
                    CurrentTests.Address++;
                    SDRAM_Data.Count++;
                }
                else{
                    CurrentTests.State = SDRAM_00_WR;
                    CurrentTests.Address = 0;
                }
            }
            break;
         case SDRAM_00_WR:
            while (GET_TIME < CurTime + 9 ){
                if (CurrentTests.Address  <= SDRAM_SIZE >> 2){
                    sdram[CurrentTests.Address] = 0x0;
                    CurrentTests.Address++;
                }
                else{
                    CurrentTests.State = SDRAM_00_RD;
                    if (CurrentTests.Status == STATUS_SDRAM_RW)
                       Tasks_Reschedule(SDRAM_Measure, 10);
                    else
                        Tasks_Reschedule(SDRAM_Measure, TESTTIME_SDRAM_STORAGE >> 3);
                    CurrentTests.Address = 0;
                }
            }
            break;
         case SDRAM_00_RD:
            Tasks_Reschedule(SDRAM_Measure, 10);
            while (GET_TIME < CurTime + 9 ){
                if (CurrentTests.Address  <= SDRAM_SIZE >> 2){
                    if (sdram[CurrentTests.Address] != 0x0){
                       SDRAM_Data.Errors00++;
                       SDRAM_Data.Addresses[BadAddrCnt] = CurrentTests.Address;
                       BadAddrCnt = (BadAddrCnt + 1) % 8;
                    }
                    CurrentTests.Address++;
                    SDRAM_Data.Count++;
                }
                else{
                    CurrentTests.State = SDRAM_End;
                    CurrentTests.Address = 0;
                }
            }
            break;
         case SDRAM_End:
              memcpy(CurrentTestPacket.TestData, (uint8_t*)&SDRAM_Data, sizeof(CurrentTestPacket.TestData));
              //Save_Power();
              CurrentTests.State = SDRAM_FF_WR;
              break;
         default:
              Save_Power();
              break;
    }
}


void Flash_WriteWord(uint32_t addr, uint16_t data){
    uint32_t CurTime =  GET_TIME;
    flash[0x555] =  0x00AA;
    flash[0x2AA] =  0x0055;
    flash[0x555] =  0x00A0;
    flash[addr] =  data;
    while (GET_TIME < CurTime + 1 );
}

void Flash_ReturnRead(void){
    flash[0x55] =  0x00F0;
}


void Flash_EraseChip(){
    flash[0x55] =  0x00AA;
    flash[0x2AA] =  0x0055;
    flash[0x555] =  0x0080;
    flash[0x555] =  0x00AA;
    flash[0x2AA] =  0x0055;
    flash[0x555] =  0x0010;
}



void FLASH_Measure(void){
    uint32_t CurTime;
    static uint8_t BadAddrCnt=0;
    CurTime =  GET_TIME;
    switch(CurrentTests.State){
        case FLASH_Start:
             memcpy((uint8_t*)&SDRAM_Data,CurrentTestPacket.TestData,sizeof(CurrentTestPacket.TestData));
             Tasks_Reschedule(FLASH_Measure, 10);
             CurrentTests.State = FLASH_FF_WR;
             CurrentTests.Address = 0;
             BadAddrCnt = 0;
             break;
        case FLASH_FF_WR:
            Flash_EraseChip();
            if (CurrentTests.Status == STATUS_FLASH_RW)
                       Tasks_Reschedule(FLASH_Measure, 8192 * 1100 );
                    else
                        Tasks_Reschedule(FLASH_Measure, 8192 * 1100 + TESTTIME_FLASH_STORAGE >> 3);
            CurrentTests.State = FLASH_FF_RD;
            break;
        case FLASH_FF_RD:
            Flash_ReturnRead();
            Tasks_Reschedule(SDRAM_Measure, 10);
            while (GET_TIME < CurTime + 9 ){
                if (CurrentTests.Address  <= FLASH_SIZE >> 2 ){
                    if (flash[CurrentTests.Address] != 0xFFFF){
                        SDRAM_Data.ErrorsFF++;
                        SDRAM_Data.Addresses[BadAddrCnt] = CurrentTests.Address;
                        BadAddrCnt = (BadAddrCnt + 1) % 8;
                    }
                    CurrentTests.Address++;
                    SDRAM_Data.Count++;
                }
                else{
                    CurrentTests.State = FLASH_00_WR;
                    CurrentTests.Address = 0;
                }
            }
            break;
         case FLASH_00_WR:
            while (GET_TIME < CurTime + 9 ){
                if (CurrentTests.Address  <= FLASH_SIZE >> 2){
                   if (CurrentTests.Address != 0x100)
                      Flash_WriteWord(CurrentTests.Address ,0x0);
                   else
                      Flash_WriteWord(CurrentTests.Address ,0x1234);
                   CurrentTests.Address++;
                }
                else{
                    CurrentTests.State = FLASH_00_RD;
                    if (CurrentTests.Status == STATUS_FLASH_RW)
                       Tasks_Reschedule(FLASH_Measure, 10);
                    else
                        Tasks_Reschedule(FLASH_Measure, TESTTIME_FLASH_STORAGE >> 3);
                    CurrentTests.Address = 0;
                }
            }
            break;
         case FLASH_00_RD:
            Tasks_Reschedule(SDRAM_Measure, 10);
            while (GET_TIME < CurTime + 9 ){
                if (CurrentTests.Address  <= FLASH_SIZE >> 2){
                    if (flash[CurrentTests.Address] != 0x0){
                       SDRAM_Data.Errors00++;
                       SDRAM_Data.Addresses[BadAddrCnt] = CurrentTests.Address;
                       BadAddrCnt = (BadAddrCnt + 1) % 8;
                    }
                    CurrentTests.Address++;
                    SDRAM_Data.Count++;
                }
                else{
                    CurrentTests.State = FLASH_End;
                    CurrentTests.Address = 0;
                }
            }
            break;
         case FLASH_End:
              memcpy(CurrentTestPacket.TestData, (uint8_t*)&SDRAM_Data, sizeof(CurrentTestPacket.TestData));
              Save_Power();
              break;
         default:
              Save_Power();
              break;
    }
}



   /*

void FLASH_Measure(void){
     switch (CurrentTests.State){
          case FLASH_Start:
               flash[0x55] =  0x0098;
               *((uint16_t*)CurrentTestPacket.TestData + 0) = flash[0x10];
               *((uint16_t*)CurrentTestPacket.TestData + 1) = flash[0x11];
               *((uint16_t*)CurrentTestPacket.TestData + 2) = flash[0x12];
               flash[0x55] =  0x00f0;
               CurrentTests.State = FLASH_End;
               break;
          default:
               Save_Power();
     }
}
     */
void ADC_Measure(void){
    uint8_t i;
    for(i = 0 ; i <7 ; i++){
         START_ADCA_MEASURE(i);
               *((uint16_t*)CurrentTestPacket.TestData + i) = GET_ADCA_VALUE;
    }
    for(i = 0 ; i <7 ; i++){
         START_ADCB_MEASURE(i);
               *((uint16_t*)CurrentTestPacket.TestData + i + 8) = GET_ADCB_VALUE;
    }

}

void do_sfft(void){
}

void do_lfft(void){
}

void Test_ChooseNext(void){
    uint8_t v;
    //TODO
 CurrentTests.Status = ((CurrentTests.Status + 1) % 12);
//    CurrentTests.Status = STATUS_SDRAM_RW;
    Save_Power();
    CurrentTests.TimeStarted = GET_TIME;
    CurrentTests.TimeTotal = 0;
    for (v =0; v< TESTPACKET_DATA_LEN; v++)
        CurrentTestPacket.TestData[v] = 0;
    switch(CurrentTests.Status){
        case STATUS_PHOTOFOIL:
            CurrentTests.TimeTotal = TESTTIME_PHOTOFOIL;
            Tasks_Reschedule(Photofoils_Measure, 100);
            CurrentTests.State = PF_Start;
            CurrentTests.PowerMode = LOW_POWER;
            break;
        case STATUS_RADFET_NOHEAT:
            SET_ADCC_ADDR(ADCC_ADDR_RF_TEMP);
            CurrentTests.TimeTotal = TESTTIME_RADFET_NOHEAT;
            Tasks_Reschedule(RADFET_Measure, 10);
            CurrentTests.State = RF_Start;
            CurrentTests.PowerMode = LOW_POWER;
            break;
        case STATUS_RADFET_HEAT:
            if (powermode == HIGH_POWER){
                SET_ADCC_ADDR(ADCC_ADDR_RF_TEMP);
                SET_RF_HEATER_ENABLE;
                CurrentTests.TimeTotal = TESTTIME_RADFET_HEAT;
                Tasks_Reschedule(RADFET_Measure, 1000);
                CurrentTests.State = RF_Heat_Start;
                CurrentTests.PowerMode = HIGH_POWER;
            }
            break;
        case STATUS_FLASH_RW:
            if (powermode == HIGH_POWER){
                CurrentTests.TimeTotal = TESTTIME_FLASH_RW;
                SET_FLASH_ENABLE;
                CurrentTests.State = FLASH_Start;
                Tasks_Reschedule(FLASH_Measure, 1000);
                CurrentTests.Address=0;
                CurrentTests.PowerMode = HIGH_POWER;
            }
            break;
        case STATUS_FLASH_STORAGE:
            if (powermode == HIGH_POWER){
                CurrentTests.TimeTotal = TESTTIME_FLASH_STORAGE;
                SET_FLASH_ENABLE;
                CurrentTests.State = FLASH_Start;
                Tasks_Reschedule(FLASH_Measure, 1000);
                CurrentTests.Address=0;
                CurrentTests.PowerMode = HIGH_POWER;
            }
            break;
        case STATUS_SDRAM_RW:
            if (powermode == HIGH_POWER){
                CurrentTests.TimeTotal = TESTTIME_SDRAM_RW;
                SET_PLL_ENABLE;
                SET_SDRAM_ENABLE;
                Tasks_Reschedule(SDRAM_Measure, 2000);
                CurrentTests.PowerMode = HIGH_POWER;
                CurrentTests.State = SDRAM_Start;
                CurrentTests.Address=0;
            }
            break;
        case STATUS_SDRAM_STORAGE:
            if (powermode == HIGH_POWER){
                CurrentTests.TimeTotal = TESTTIME_SDRAM_STORAGE;
                SET_PLL_ENABLE;
                SET_SDRAM_ENABLE;
                Tasks_Reschedule(SDRAM_Measure, 2000);
                CurrentTests.PowerMode = HIGH_POWER;
                CurrentTests.State = SDRAM_Start;
                CurrentTests.Address=0;
            }
            break;
        case STATUS_ADC:
                CurrentTests.TimeTotal = TESTTIME_ADC;
                Tasks_Reschedule(ADC_Measure, 100);
                CurrentTests.PowerMode = LOW_POWER;
            break;


          default:
                  Save_Power();
                  CurrentTests.TimeTotal = 0;
    }
}

void Test_Handle(void){
     uint8_t i,crc;
     if ((CurrentTests.TimeStarted + CurrentTests.TimeTotal < GET_TIME) || (CurrentTests.PowerMode == HIGH_POWER && powermode == LOW_POWER) ){
        if ((CurrentTests.Status > 0) && (CurrentTests.TimeTotal > 0)){
           memcpy(&CurrentTestPacket.Telemetry, &CurrentTM, sizeof(TM_t));
           CurrentTestPacket.TimeStamp = GET_TIME;

        CurrentTests.TimeStarted = GET_TIME;
        CurrentTests.TimeTotal = 0;
        switch (CurrentTests.Status){
            case STATUS_PHOTOFOIL:
                CurrentTestPacket.TestDesc = TESTDESC_PHOTOFOIL;
                CurrentTestPacket.TestNum = CurrentTests.Count.Photofoil++;
                break;
            case STATUS_RADFET_NOHEAT:
                CurrentTestPacket.TestDesc = TESTDESC_RADFET;
                CurrentTestPacket.TestNum = CurrentTests.Count.RadFETNoHeat++;
                break;
            case STATUS_RADFET_HEAT:
                CurrentTestPacket.TestDesc = TESTDESC_RADFET;
                CurrentTestPacket.TestNum = CurrentTests.Count.RadFETHeat++;
                break;
            case STATUS_FLASH_RW:
                CurrentTestPacket.TestDesc = TESTDESC_FLASH_RW;
                CurrentTestPacket.TestNum = CurrentTests.Count.FLASHRW++;
                break;
            case STATUS_FLASH_STORAGE:
                CurrentTestPacket.TestDesc = TESTDESC_FLASH_STORAGE;
                CurrentTestPacket.TestNum = CurrentTests.Count.FLASHStorage++;
                break;
             case STATUS_SDRAM_RW:
                CurrentTestPacket.TestDesc = TESTDESC_SDRAM_RW;
                CurrentTestPacket.TestNum = CurrentTests.Count.SDRAMRW++;
                break;
             case STATUS_SDRAM_STORAGE:
                CurrentTestPacket.TestDesc = TESTDESC_SDRAM_STORAGE;
                CurrentTestPacket.TestNum = CurrentTests.Count.SDRAMStorage++;
                break;
             case STATUS_ADC:
                CurrentTestPacket.TestDesc = TESTDESC_ADC;
                CurrentTestPacket.TestNum = CurrentTests.Count.ADC++;
                break;
            default:
                    CurrentTestPacket.TestNum = 0;
                CurrentTestPacket.TestDesc = TESTDESC_EMPTYPACKET;
        }
        if (CurrentTestPacket.TestDesc > 0){
           CurrentTestPacket.PacketNum = SPacketNumber;
        }
        crc = 0;
        for( i = 0; i< 31; i++)
             crc ^= ((uint8_t*)&CurrentTestPacket)[i];
        CurrentTestPacket.CRC = crc << 8;
        crc = 0;
        for( i = 31; i< 62; i++)
             crc ^= ((uint8_t *)&CurrentTestPacket)[i];
        CurrentTestPacket.CRC |= crc;
        if ((CurrentTestPacket.TestDesc > 0)){
           SPacketNumber++;
           TestPacketQueue_Add(&CurrentTestPacket);

        }
        }
        Test_ChooseNext();
    }
}



void Tests_Init(void){
    CurrentTests.TimeTotal = 0;
    CurrentTests.TimeStarted = 0;
    CurrentTests.Status = STATUS_RADFET_NOHEAT - 1;
}

void RADFET_Measure(void){
    uint16_t pos, neg;
    static uint8_t curadc = 0;
    switch (CurrentTests.State){
        case RF_Heat_Start:
            pos = CurrentTM.temp2;
            if (pos > 0x37){
               neg = GET_RF_HEATER_PWM;
               neg += (pos - 0x37);
               if (neg > 255)
                  neg = 255;
               SET_RF_HEATER_PWM(neg);
            }
            if ((pos < 0x37) || ((CurrentTests.TimeStarted + CurrentTests.TimeTotal - 40 * 1000) < GET_TIME )) {
                 CurrentTests.State = RF_Start;
                 CurrentTestPacket.TestData[18] = pos;
                 CurrentTestPacket.TestData[19] = GET_RF_HEATER_PWM;
                 SET_RF_HEATER_PWM(0);
            }
            curadc = (curadc + 1) % 1;
            break;
        case RF_Start:
            CurrentTests.Address = 0;                // Select First RADFET
            *((uint16_t*)CurrentTestPacket.TestData + 8) = 0;
            SET_RF_IRRADIATION_DISABLE;
            SET_RF_CURRENT(RADFET_BASE_CURRENT);
            Tasks_Reschedule(RADFET_Measure, 1000);
            pos = CurrentTM.temp2;
            CurrentTestPacket.TestData[18] = pos;
            CurrentTests.State = RF_Select;
            break;
        case RF_Select:
            SET_RF_BIAS1_ENABLE;
            SET_RF_BIAS2_ENABLE;
            SET_RF_BIAS3_ENABLE;
            SET_RF_BIAS4_ENABLE;
            Tasks_Reschedule(RADFET_Measure, 2000);
            switch (CurrentTests.Address){
                case 0:
                    SET_RF_BIAS1_DISABLE;
                    break;
                case 1:
                    SET_RF_BIAS2_DISABLE;
                    break;
                case 2:
                    SET_RF_BIAS3_DISABLE;
                    break;
                case 3:
                    SET_RF_BIAS4_DISABLE;
                    break;
            }
            CurrentTests.State = RF_Measure;
            break;
        case RF_Measure:
            if (curadc == 0 ){
                        START_ADCA_MEASURE(RF_VP_ADDR);
                        pos =  GET_ADCA_VALUE;
                        START_ADCA_MEASURE(RF_VP_ADDR);
                        pos +=  GET_ADCA_VALUE;
                        START_ADCA_MEASURE(RF_VP_ADDR);
                        pos +=  GET_ADCA_VALUE;
                        START_ADCA_MEASURE(RF_VP_ADDR);
                        pos +=  GET_ADCA_VALUE;

                        START_ADCA_MEASURE(RF_VN_ADDR);
                        neg =  GET_ADCA_VALUE;
                        START_ADCA_MEASURE(RF_VN_ADDR);
                        neg +=  GET_ADCA_VALUE;
                        START_ADCA_MEASURE(RF_VN_ADDR);
                        neg +=  GET_ADCA_VALUE;
                        START_ADCA_MEASURE(RF_VN_ADDR);
                        neg +=  GET_ADCA_VALUE;
            }else{
                        START_ADCB_MEASURE(RF_VP_ADDR);
                        pos =  GET_ADCB_VALUE;
                        START_ADCB_MEASURE(RF_VP_ADDR);
                        pos +=  GET_ADCB_VALUE;
                        START_ADCB_MEASURE(RF_VP_ADDR);
                        pos +=  GET_ADCB_VALUE;
                        START_ADCB_MEASURE(RF_VP_ADDR);
                        pos +=  GET_ADCB_VALUE;

                        START_ADCB_MEASURE(RF_VN_ADDR);
                        neg =  GET_ADCB_VALUE;
                        START_ADCB_MEASURE(RF_VN_ADDR);
                        neg +=  GET_ADCB_VALUE;
                        START_ADCB_MEASURE(RF_VN_ADDR);
                        neg +=  GET_ADCB_VALUE;
                        START_ADCB_MEASURE(RF_VN_ADDR);
                        neg +=  GET_ADCB_VALUE;
            }
            *((uint16_t*)(CurrentTestPacket.TestData) + CurrentTests.Address*2) = pos;
            *((uint16_t*)(CurrentTestPacket.TestData) + CurrentTests.Address*2 +1) = neg;
            CurrentTests.State = RF_Select;
            CurrentTests.Address++;
            if (CurrentTests.Address >= 4){
                Tasks_Reschedule(RADFET_Measure, 0);
                CurrentTests.State = RF_End;
            }
            else
                Tasks_Reschedule(RADFET_Measure, 1000);
            break;
        default:
            Tasks_Reschedule(RADFET_Measure, 0);
            Save_Power();
    }
}

void Photofoils_Measure(void){
    uint16_t v;
    static uint8_t pf1_i;
    static uint8_t pf1_q;
    static uint8_t pf2_i;
    static uint8_t pf2_q;
    static uint8_t curadc =0;
    switch (CurrentTests.State){
        case PF_Start:
            Tasks_Reschedule(Photofoils_Measure, 1000);
            SET_PLL_ENABLE;
            SET_PF1_CURRENT(PF_MINCURRENT);
            SET_PF2_CURRENT(PF_MINCURRENT);
            CurrentTests.Address = 1023;
            CurrentTests.State = PF_Voc;
            curadc = (curadc + 1) % 1;
            break;
        case PF_Voc:
            Tasks_Reschedule(Photofoils_Measure, 40);
            CurrentTests.State = PF_Isc;
            if (curadc ==0 ) {
                        START_ADCA_MEASURE(PF1_V_ADDR);
                        v =  GET_ADCA_VALUE;
                        //*((uint16_t*)(CurrentTestPacket.TestData) + 0) = v;
                        PF_Data.PF1[0] =v;
                        START_ADCA_MEASURE(PF1_C_ADDR);
                        v =  GET_ADCA_VALUE;
                        //*((uint16_t*)(CurrentTestPacket.TestData) + 1) = v;
                        PF_Data.PF1[1] =v;
                        START_ADCA_MEASURE(PF2_V_ADDR);
                        v =  GET_ADCA_VALUE;
                        //*((uint16_t*)(CurrentTestPacket.TestData) + 12) = v;
                        PF_Data.PF2[0] =v;
                        START_ADCA_MEASURE(PF2_C_ADDR);
                        v =  GET_ADCA_VALUE;
                        //*((uint16_t*)(CurrentTestPacket.TestData) + 13) = v;
                        PF_Data.PF2[1] = v;
            } else {
                        START_ADCB_MEASURE(PF1_V_ADDR);
                        v =  GET_ADCB_VALUE;
                        //*((uint16_t*)(CurrentTestPacket.TestData) + 0) = v;
                        PF_Data.PF1[0] = v;
                        START_ADCB_MEASURE(PF1_C_ADDR);
                        v =  GET_ADCB_VALUE;
                        //*((uint16_t*)(CurrentTestPacket.TestData) + 1) = v;
                        PF_Data.PF1[1] = v;
                        START_ADCB_MEASURE(PF2_V_ADDR);
                        v =  GET_ADCB_VALUE;
                        //*((uint16_t*)(CurrentTestPacket.TestData) + 12) = v;
                        PF_Data.PF2[0] = v;
                        START_ADCB_MEASURE(PF2_C_ADDR);
                        v =  GET_ADCB_VALUE;
                        PF_Data.PF2[1] = v;
                        //*((uint16_t*)(CurrentTestPacket.TestData) + 13) = v;

            }

            SET_PF1_CURRENT(PF_MAXCURRENT);
            SET_PF2_CURRENT(PF_MAXCURRENT);
            break;
        case PF_Isc:
            Tasks_Reschedule(Photofoils_Measure, 10);
            CurrentTests.State = PF_Middle;
            if (curadc ==0 ) {
                        START_ADCA_MEASURE(PF1_V_ADDR);
                        v =  GET_ADCA_VALUE;
                        //*((uint16_t*)(CurrentTestPacket.TestData) + 10) = v;
                        PF_Data.PF1[10] = v;
                        START_ADCA_MEASURE(PF1_C_ADDR);
                        v =  GET_ADCA_VALUE;
                        //*((uint16_t*)(CurrentTestPacket.TestData) + 11) = v;
                        PF_Data.PF1[11] = v;
                        pf1_q = v / 5;
                        START_ADCA_MEASURE(PF2_V_ADDR);
                        v =  GET_ADCA_VALUE;
                        //*((uint16_t*)(CurrentTestPacket.TestData) + 22) = v;
                        PF_Data.PF2[10] = v;
                        START_ADCA_MEASURE(PF2_C_ADDR);
                        v =  GET_ADCA_VALUE;
                        PF_Data.PF2[11] = v;
                        //*((uint16_t*)(CurrentTestPacket.TestData) + 23) = v;
            } else{
                        START_ADCB_MEASURE(PF1_V_ADDR);
                        v =  GET_ADCB_VALUE;
                        //*((uint16_t*)(CurrentTestPacket.TestData) + 10) = v;
                        PF_Data.PF1[10] = v;
                        START_ADCB_MEASURE(PF1_C_ADDR);
                        v =  GET_ADCB_VALUE;
                        PF_Data.PF1[11] = v;
                        //*((uint16_t*)(CurrentTestPacket.TestData) + 11) = v;
                        pf1_q = v / 5;
                        START_ADCB_MEASURE(PF2_V_ADDR);
                        v =  GET_ADCB_VALUE;
                        //*((uint16_t*)(CurrentTestPacket.TestData) + 22) = v;
                        PF_Data.PF2[10] = v;
                        START_ADCB_MEASURE(PF2_C_ADDR);
                        v =  GET_ADCB_VALUE;
                        PF_Data.PF2[11] = v;
                        //*((uint16_t*)(CurrentTestPacket.TestData) + 23) = v;
            }
            pf2_q = v / 5;
            pf1_i = 1;
            pf2_i = 1;
            break;
        case PF_Middle:
                CurrentTests.Address -= 1;
                if (curadc == 0) {
                   START_ADCA_MEASURE(PF1_C_ADDR);
                   v =  GET_ADCA_VALUE;
                }else{
                   START_ADCB_MEASURE(PF1_C_ADDR);
                   v =  GET_ADCB_VALUE;
                }
                if (v <  PF_Data.PF1[11]  - (pf1_q * pf1_i) ){
                    //*((uint16_t*)(CurrentTestPacket.TestData) + 9 - ((pf1_i - 1) * 2)) = v;
                    PF_Data.PF1[11-2*pf1_i] = v;
                                if (curadc == 0) {
                                   START_ADCA_MEASURE(PF1_V_ADDR);
                                   v =  GET_ADCA_VALUE;
                                }else{
                                   START_ADCB_MEASURE(PF1_V_ADDR);
                                   v =  GET_ADCB_VALUE;
                                }
                    PF_Data.PF1[10-2*pf1_i] = v;
                    pf1_i++;
                }
                    if (curadc == 0) {
                   START_ADCA_MEASURE(PF2_C_ADDR);
                   v =  GET_ADCA_VALUE;
                }else{
                   START_ADCB_MEASURE(PF2_C_ADDR);
                   v =  GET_ADCB_VALUE;
                }                if (v <  PF_Data.PF2[11] - (pf2_q * pf2_i) ){
                    //*((uint16_t*)(CurrentTestPacket.TestData) + 21 - ((pf2_i - 1) * 2)) = v;
                    PF_Data.PF2[11-2*pf2_i] = v;
                    if (curadc == 0) {
                   START_ADCA_MEASURE(PF2_V_ADDR);
                   v =  GET_ADCA_VALUE;
                }else{
                   START_ADCB_MEASURE(PF2_V_ADDR);
                   v =  GET_ADCB_VALUE;
                }
                    //*((uint16_t*)(CurrentTestPacket.TestData) + 20 - ((pf2_i - 1) * 2)) = v;
                    PF_Data.PF2[10-2*pf2_i] = v;
                    pf2_i++;
                }
                SET_PF1_CURRENT(CurrentTests.Address);
                SET_PF2_CURRENT(CurrentTests.Address);
                if (CurrentTests.Address == 0 || ((pf1_i >= 5) && (pf2_i >= 5)))
                    CurrentTests.State = PF_End;
            break;
        case PF_End:
             memcpy(CurrentTestPacket.TestData, (uint8_t*)&PF_Data, sizeof(CurrentTestPacket.TestData));
             Save_Power();
             break;
    }


}
