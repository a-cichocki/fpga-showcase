#ifndef __TASKS_H__
#define __TASKS_H__
/*  Project CHOMIK
    Space Research Centre
    Copyright © 2011. All Rights Reserved.

    SUBSYSTEM:   Instrument FM Software
    FILE:        CHM_CPU_SOFT_tasks.h
    AUTHOR:      Andrzej Cichocki
    VERSION:     1.10

    OVERVIEW
    ========
     Tasks processes service
    08-04-2011 Startup
    28-07-2011  Interval fixup - MM
    29-07-2011  QM/FM review - MM;

*/
    #include "hardware.h"

    #define TASKS_MAX       10
    typedef void(*ServiceFunction_t)(void);
//---------------------------------------------------------------------------
    typedef struct {
        ServiceFunction_t   ServiceFunction;
        uint32_t            Interval;
        uint32_t            NextExecutionTime;
    } Task_t;

//---------------------------------------------------------------------------
    typedef struct {
        uint8_t             Count;
        Task_t              Task[TASKS_MAX];
    } Tasks_t;
//---------------------------------------------------------------------------
    void Tasks_Init(void);
    void Tasks_Add(ServiceFunction_t ServiceFunction, uint32_t Interval);
    void Tasks_Reschedule(ServiceFunction_t ServiceFunction, uint32_t NewInterval);
    void Tasks_Run(void);
//---------------------------------------------------------------------------
#endif
