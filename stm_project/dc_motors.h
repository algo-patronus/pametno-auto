#ifndef _MOTORS_H_
#define _MOTORS_H_

#include "stm32f4xx.h"

// Treba definirati pinove za DC
#define IN1 6  // PB6 -> PD1
#define IN2 7  // PB7
#define IN3 8  // PB8
#define IN4 9  // PB9 -> PD4
#define ENA 1  // PD5 -> PB6
#define ENB 2  // PD6 -> PB7
#define PWM_PERIOD 2000
#define PWM_PERIOD_PSC     0x0054     // 84

void dc_motors_init();
void dc_motors_forward();
void dc_motors_backward();
void dc_motors_left();
void dc_motors_right();
void dc_motors_stop();
void dc_motors_start();
void dc_motors_set_speed(int);
void dc_motors_set_direction(int, int, int, int);

#endif
