#ifndef TESTS__H
#define TESTS__H
    #include <stdint.h>

    #define  TESTTIME_PHOTOFOIL         40 * 1000
    #define  TESTTIME_RADFET_NOHEAT     40 * 1000
    #define  TESTTIME_RADFET_HEAT       30 * 60 * 1000
    #define  TESTTIME_FLASH_RW          1  *  60 * 60 * 1000
    #define  TESTTIME_SDRAM_RW          30 * 60 * 1000
    #define  TESTTIME_SDRAM_STORAGE     35 * 60 * 1000
    #define  TESTTIME_ADC               10 * 60 * 1000
    #define  TESTTIME_FLASH_STORAGE     1  * 60 * 60 * 1000


   /* #define  TESTTIME_PHOTOFOIL         20 * 1000
    #define  TESTTIME_RADFET_NOHEAT     20 * 1000
    #define  TESTTIME_RADFET_HEAT       1 * 60 * 1000
    #define  TESTTIME_FLASH_RW          2 * 1000
    #define  TESTTIME_FLASH_STORAGE     2 * 1000
    #define  TESTTIME_SDRAM_RW          3 * 60 * 1000
    #define  TESTTIME_SDRAM_STORAGE     5 * 60 * 1000
    #define  TESTTIME_ADC               2  * 1000 */

    #define  RADFET_BASE_CURRENT        107
    #define  PF_MAXCURRENT              1023
    #define  PF_MINCURRENT               0


    enum RADFET_States { RF_Heat_Start, RF_Start, RF_Select, RF_Measure, RF_End} ;
    enum SDRAM_RW_States { SDRAM_Start, SDRAM_FF_WR, SDRAM_FF_RD, SDRAM_00_WR, SDRAM_00_RD, SDRAM_AA_WR, SDRAM_AA_RD, SDRAM_End};
    enum FLASH_RW_States { FLASH_Start, FLASH_FF_WR, FLASH_FF_RD, FLASH_00_WR, FLASH_00_RD, FLASH_AA_WR, FLASH_AA_RD, FLASH_End};
    enum PF_States { PF_Start, PF_Voc, PF_Isc, PF_Middle, PF_End} ;

    typedef struct {
            uint8_t    FLASHRW;
            uint8_t    FLASHStorage;
            uint8_t    SDRAMRW;
            uint8_t    SDRAMStorage;
            uint8_t    RadFETNoHeat;
            uint8_t    RadFETHeat;
            uint8_t    Photofoil;
            uint8_t    ADC;
    } TestCounts_t;

    typedef struct {
        TestCounts_t Count;
        uint32_t TimeTotal;
        uint8_t Status;
        uint32_t TimeStarted;
        uint8_t     State;
        uint32_t    Address;
        uint8_t     PowerMode;
    } Tests_t;

    typedef struct {
            uint16_t PF1[12];
            uint16_t PF2[12];
    } PF_Data_t;

    extern Tests_t CurrentTests;

    void do_sfft(void);
    void do_lfft(void);
    void Test_ChooseNext(void);
    void Test_Handle(void);
    void Test_Handle_Photofoil(void);
    void Test_Handle_RADFET(void);
    void Tests_Init(void);
    void RADFET_Measure(void);
    void Photofoils_Measure(void);
    void FLASH_Measure(void);
    void SDRAM_Measure(void);
    void ADC_Measure(void);

#endif
