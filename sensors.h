#ifndef __SENSORS_H
#define __SENSORS_H

#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <stdbool.h>

#include "driver/pwm.h"
#include "driver/gpio.h"
#include "driver/adc.h"
#include <time.h>
#include "hw_timer.h"

#include "freertos/FreeRTOS.h"
#include "freertos/task.h"
#include "freertos/queue.h"
#include "debug.h"

#define TRIGGER_PIN    4 //D2
#define ECHO_PIN       0 //D3
#define MOTION         12  //D6
#define LDR            13  //D7
#define SERVO          14  //D5
#define PWM_PERIOD     20000 //20ms ili 20000us
#define LED1           9 //D11
#define LED2           10 //D12


void adc         (void);
void LDR_init    (void);
int LDR_output   (void);
void servo_init  (void);
void zero_degrees(void);
void oneeighty   (void);
void ninety_degrees(void);
void hcsr_init   (void);
int get_ultrasonic(void);
void motion_init (void);
int motion_detection(void);
void LED_init   (void);
void LED_on     (int LED_number);
void LED_off    (int LED_number);
#endif
