#include "servo.h"

void servo_init(void){
  pwm_init(PWM_PERIOD, SERVO_PIN, DUTY_90);
}

void servo_0(void){
  pwm_set_duty(DUTY_0);
}

void servo_180(void){
  pwm_set_duty(DUTY_180);
}

void servo_90(void){
  pwm_set_duty(DUTY_90);
}
