#ifndef __PWM_H_
#define __PWM_H_

#include "stm32f4xx.h"

void pwm_init(unsigned short period, unsigned short pin, unsigned short duty_cycle);
void pwm_set_duty(int duty);

#define PWM_PERIOD_PSC     0x0054     // 84
#define PWM_ARR_1000       0x03E8     // 1000
#define PWM_ARR_20000      0x4E20     // 20000

#endif
