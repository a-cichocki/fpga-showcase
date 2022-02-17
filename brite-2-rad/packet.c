#include "packet.h"
#include "hardware.h"
#include "tests.h"
#include <string.h>
#include <stdint.h>

//---------------------------------------------------------------------------

    TM_t                CurrentTM;
    TestPacket_t        CurrentTestPacket;
    TestPacketQueue_t   TestPacketQueue;
//---------------------------------------------------------------------------


void TM_Update (void){
    static uint8_t i=2;
    CurrentTM.volt_1v2 = GET_HK_V1V2;
    CurrentTM.curr_1v2 = GET_HK_C1V2;
    CurrentTM.curr_3v3 = GET_HK_C3V3;
    CurrentTM.temp1 = GET_HK_TEMP1;
    CurrentTM.status = (CurrentTests.Status << 4) | TestPacketQueue.Count;
    if (i == 2 ){
        i = 3;
        CurrentTM.volt_3v3 = GET_ADCC_VALUE >> 6;
    }
    else{
        i = 2;
        CurrentTM.temp2 = GET_ADCC_VALUE >> 6;
    }
    SET_ADCC_ADDR(i);
}
//---------------------------------------------------------------------------

void Packets_Init(void){
    TestPacketQueue.Pointer = 0;
    TestPacketQueue.Count = 0;
    TestPacketQueue.ToSendIndex = 0;
}

//---------------------------------------------------------------------------
void TestPacketQueue_Add(TestPacket_t* tp){
    memcpy(TestPacketQueue.Array[TestPacketQueue.Pointer], tp, sizeof(TestPacket_t));
    if (TestPacketQueue.Count < TESTPACKET_QUEUE_LEN){
        TestPacketQueue.Pointer = (TestPacketQueue.Pointer + 1) % TESTPACKET_QUEUE_LEN;
        TestPacketQueue.Count++;
    }
}
//---------------------------------------------------------------------------
uint8_t TestPacketQueue_Get(TestPacket_t* tp){
    uint8_t Index;
    Index = (TestPacketQueue.Pointer - TestPacketQueue.Count < 0)? TESTPACKET_QUEUE_LEN - TestPacketQueue.Count + TestPacketQueue.Pointer : TestPacketQueue.Pointer - TestPacketQueue.Count;
    if (TestPacketQueue.Count != 0){
        memcpy(tp, TestPacketQueue.Array[Index], sizeof(TestPacket_t));
        TestPacketQueue.Count--;
        return 0;
    }
    return 1;
}
//---------------------------------------------------------------------------

uint8_t CRC8(uint8_t *inData, uint16_t len){
   uint8_t crc;
   crc = 0xff;
   for(; len; len--)
   {
      crc ^= *inData++;
      crc ^= (crc << 3) ^ (crc << 4) ^ (crc << 6);
      crc ^= (crc >> 4) ^ (crc >> 5);
   }
   return crc;
}
//---------------------------------------------------------------------------
void TM_Send(void){
    uint8_t i, crc=0;
    for (i = 0; i< 7; i++)
        crc ^= *(((char*) &CurrentTM)+i);
    uart_send((char*) &CurrentTM, sizeof(CurrentTM));
    uart_send((char*) &crc, 1);
}
//---------------------------------------------------------------------------
void TestPacket_Send(void){
    TestPacket_t TempPacket;
    uint8_t i;
    uint8_t crc;
    if( TestPacketQueue_Get(&TempPacket) != 0){
        TempPacket.PacketNum = 0;
        TempPacket.TestNum = 0;
        TempPacket.TimeStamp = GET_TIME;
        TempPacket.TestDesc = 0;
        memcpy(&TempPacket.Telemetry, &CurrentTM ,sizeof(TM_t));
       crc = 0;
       for( i = 0; i< 31; i++)
         crc ^= ((uint8_t*)&TempPacket)[i];
       TempPacket.CRC = crc << 8;
       crc = 0;
       for( i = 31; i< 62; i++)
         crc ^= ((uint8_t *)&TempPacket)[i];
       TempPacket.CRC |= crc;
    }
    uart_send((char*) &TempPacket, sizeof(TestPacket_t));
}


//EOF
