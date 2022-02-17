#include "hardware.h"
#include "tasks.h"

Tasks_t Tasks;

void Tasks_Init(void){
    Tasks.Count = 0;
}
//---------------------------------------------------------------------------
void Tasks_Add(ServiceFunction_t ServiceFunction, uint32_t Interval){
    Tasks.Task[Tasks.Count].Interval = Interval;
    Tasks.Task[Tasks.Count].ServiceFunction = ServiceFunction;
    if (Interval > 0)
        Tasks.Task[Tasks.Count].NextExecutionTime = GET_TIME + Interval;
    else
        Tasks.Task[Tasks.Count].NextExecutionTime = 0;
    Tasks.Count++;
}
//---------------------------------------------------------------------------
void Tasks_Reschedule(ServiceFunction_t ServiceFunction, uint32_t NewInterval) {
    uint8_t i;
    i = Tasks.Count;
    while(i--){
        if (Tasks.Task[i].ServiceFunction == ServiceFunction){
            Tasks.Task[i].Interval = NewInterval;
            Tasks.Task[i].NextExecutionTime = NewInterval > 0 ? GET_TIME + NewInterval : 0;
            break;
        }
    }
}
//---------------------------------------------------------------------------
void Tasks_Run(void){
    static uint32_t CurrentTime;
    static uint8_t i;
    i = Tasks.Count;
    while(i--){
        CurrentTime = GET_TIME;
        if (CurrentTime >= Tasks.Task[i].NextExecutionTime && (Tasks.Task[i].Interval > 0)){
            Tasks.Task[i].ServiceFunction();
            Tasks.Task[i].NextExecutionTime = Tasks.Task[i].Interval + CurrentTime;
        }
    }
}
//---------------------------------------------------------------------------
//EOF
