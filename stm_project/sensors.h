#ifndef _SENSORS_H_
#define _SENSORS_H_

#include "stm32f4xx.h"

#define TRIGGER_PIN    11 // PB11
#define ECHO_PIN       12 // PB12

void hcsr_init(void);
int get_ultrasonic(void);

#endif
