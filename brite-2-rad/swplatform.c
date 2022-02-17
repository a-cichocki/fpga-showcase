/*
 *	Software Platform Generated File
 *	--------------------------------
 */


#include "swplatform.h"

/* Global variables to access Software Platform stacks */
uart8_t * drv_uart8_1;

/* Initialize all stacks in the Software Platform */
void swplatform_init_stacks(void)
{
    drv_uart8_1 = uart8_open(DRV_UART8_1);
}
