#ifndef __PACKET_H__
#define __PACKET_H__
    #include <stdint.h>

    #define TESTPACKET_QUEUE_LEN        15
    #define TESTPACKET_LEN              64
    #define TESTPACKET_DATA_LEN         48

    #define TESTDESC_EMPTYPACKET        0
    #define TESTDESC_PHOTOFOIL          0x2A
    #define TESTDESC_RADFET             0x7C
    #define TESTDESC_SDRAM_RW           0xA5
    #define TESTDESC_SDRAM_STORAGE      0xB6
    #define TESTDESC_FLASH_RW           0xC2
    #define TESTDESC_FLASH_STORAGE      0xD3
    #define TESTDESC_ADC                0x3D
    #define TESTDESC_LFFT               0x7E
    #define TESTDESC_SFFT               0x34

    #define STATUS_ERROR                0
    #define STATUS_SFFT                 1
    #define STATUS_FLASH_STORAGE        2
    #define STATUS_FLASH_RW             3
    #define STATUS_SDRAM_RW             4
    #define STATUS_FPGA                 5
    #define STATUS_RADFET_NOHEAT        6
    #define STATUS_RADFET_HEAT          7
    #define STATUS_PHOTOFOIL            8
    #define STATUS_SDRAM_STORAGE        9
    #define STATUS_ADC                  10
    #define STATUS_CLOCKSOURCE          11
    #define STATUS_SAFE                 0xf



//---------------------------------------------------------------------------

typedef struct {
    uint8_t     volt_1v2;
    uint8_t     curr_1v2;
    uint8_t     volt_3v3;
    uint8_t     curr_3v3;
    uint8_t     temp1;
    uint8_t     temp2;
    uint8_t     status;
} TM_t;

typedef struct {
    uint8_t     PacketNum;
    TM_t        Telemetry;
    uint32_t    TimeStamp;
    uint8_t     TestDesc;
    uint8_t     TestNum;
    uint8_t     TestData[TESTPACKET_DATA_LEN];
    uint16_t    CRC;
} TestPacket_t;

typedef struct {
    uint8_t     Pointer;
    uint8_t     ToSendIndex;
    uint8_t     Count;
    uint8_t     Array[TESTPACKET_QUEUE_LEN][TESTPACKET_LEN];
} TestPacketQueue_t;

typedef struct{
    uint32_t   ErrorsFF;
    uint32_t   Errors00;
    uint64_t   Count;
    uint32_t   Addresses[8];
} SDRAM_Data_t;

void Packets_Init(void);
void TM_Update(void);
void TestPacketQueue_Init(void);
void TestPacketQueue_Add(TestPacket_t *);
uint8_t TestPacketQueue_Get(TestPacket_t *);
uint8_t CRC8(uint8_t *inData, uint16_t len);

void TM_Send(void);
void TestPacket_Send(void);

extern    TM_t                CurrentTM;
extern    TestPacket_t        CurrentTestPacket;
extern    TestPacketQueue_t   TestPacketQueue;
#endif

