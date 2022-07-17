#include "dc_motors.h"
#include "driver/pwm.h"
#include "driver/gpio.h"

void dc_motors_init(){
  int pins[] = {IN1, IN2, IN3, IN4, ENA, ENB};
  for(int i = 0; i < 6; ++i){
    gpio_config_t io_conf_DCMOTOR;
    io_conf_DCMOTOR.intr_type = GPIO_INTR_DISABLE;
    io_conf_DCMOTOR.mode = GPIO_MODE_OUTPUT;
    io_conf_DCMOTOR.pin_bit_mask = (1 << pins[i]);
    io_conf_DCMOTOR.pull_down_en = 0;
    io_conf_DCMOTOR.pull_up_en = 0;
    gpio_config(&io_conf_DCMOTOR);
  }
  dc_motors_stop();
}

void dc_motors_forward(){
  gpio_set_level(ENA, 1);
  gpio_set_level(ENB, 1);
  gpio_set_level(IN1, 1);
  gpio_set_level(IN2, 0);
  gpio_set_level(IN3, 0);
  gpio_set_level(IN4, 1);
}

void dc_motors_backward(){
  gpio_set_level(ENA, 1);
  gpio_set_level(ENB, 1);
  gpio_set_level(IN1, 0);
  gpio_set_level(IN2, 1);
  gpio_set_level(IN3, 1);
  gpio_set_level(IN4, 0);
}

void dc_motors_left(){
  gpio_set_level(ENA, 1);
  gpio_set_level(ENB, 1);
  gpio_set_level(IN1, 1);
  gpio_set_level(IN2, 0);
  gpio_set_level(IN3, 1);
  gpio_set_level(IN4, 0);
}

void dc_motors_right(){
  gpio_set_level(ENA, 1);
  gpio_set_level(ENB, 1);
  gpio_set_level(IN1, 0);
  gpio_set_level(IN2, 1);
  gpio_set_level(IN3, 0);
  gpio_set_level(IN4, 1);
}

void dc_motors_stop(){
  gpio_set_level(ENA, 0);
  gpio_set_level(ENB, 0);
}
