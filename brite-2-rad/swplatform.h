/*
 *	Software Platform Generated File
 *	--------------------------------
 */

#ifndef _SWP_SWPLATFORM_H
#define _SWP_SWPLATFORM_H

/* Device ID's */
#include "devices.h"

/* Extra project headers */
#include "wb_interfaces.h"

/* Sofware Services */
#include <interrupts.h>
#include <timers.h>
#include <timing.h>

/* Top Level Stack Items */
#include <drv_uart8.h>
#include <per_wb_interface.h>

/* Lower Level Stack Items */
#include <per_uart8.h>

/* Global variables to access Software Platform stacks */
extern uart8_t * drv_uart8_1;

/* Initialize all stacks in the Software Platform */
extern void swplatform_init_stacks(void);
#endif
