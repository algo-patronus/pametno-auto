#ifndef _SERVO_H_
#define _SERVO_H_

#include "pwm.h"

#define SERVO_PIN   6     // PC6
#define PWM_PERIOD  (20000) // 20 ms ili 20000 us

#define DUTY_0   630
#define DUTY_90  1380
#define DUTY_180 2150

void servo_init(void);
void servo_0(void);
void servo_90(void);
void servo_180(void);

#endif
