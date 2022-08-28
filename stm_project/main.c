#include "stm32f4xx.h"
#include "usart.h"
#include "delay.h"
#include "pwm.h"
#include "sensors.h"
#include "dc_motors.h"

#define STOP_DISTANCE 10
#define MAX_DISTANCE 150

char mode = 'M', direction = 'S';
char ready = 6;
float right_distance = 0, middle_distance = 0, left_distance = 0;

uint8_t check_input(){
  if(g_usart3_ridx != g_usart3_widx){
    char letter = g_usart3_buffer[g_usart3_ridx++];
    
    printUSART2("Dobili smo: %c\n", letter);
    if(g_usart3_ridx >= (USART3_BUFFER_SIZE))
    {
      g_usart3_ridx = 0;
    }
    while(letter == g_usart3_buffer[g_usart3_ridx]){
      g_usart3_ridx++;
      if(g_usart3_ridx >= (USART3_BUFFER_SIZE))
        g_usart3_ridx = 0;
    }
    if(letter == 'M' || letter == 'A'){
      if(mode == 'M')
        direction = 'S';
      mode = letter;
    }
    else if(letter == 'S' || letter == 'L' || letter == 'D' || letter == 'U' || letter == 'R'){
      if(mode == 'M'){
        direction = letter;
      }
    }
    return 1;
  }
  return 0;
}

int max_distance(int left, int right){
  return (left > right) ? left : right;
}

void automatic_control(){
  dc_motors_set_speed(100);
  while(mode == 'A'){
    /* if(get_ultrasonic() < STOP_DISTANCE) */
    dc_motors_forward();
    while((middle_distance = get_ultrasonic()) >= STOP_DISTANCE && mode == 'A'){
      check_input();
    }
    dc_motors_stop();
    
    if(mode == 'M') return;
    
    servo_0();
    delay_ms(750);
    right_distance = get_ultrasonic();
    delay_ms(750);
    servo_180();
    delay_ms(750);
    left_distance = get_ultrasonic();
    delay_ms(750);
    servo_90();
    float max = max_distance(left_distance, right_distance);
    if(max == left_distance)
      dc_motors_left();
    else
      dc_motors_right();
    delay_ms(200);
    delay_ms(500);
  }
}

void manual_control(){
  // U if block dodati delay od 10 ms ako watchdog okine
  switch(direction){
    case 'U':
      dc_motors_set_speed(100);
      dc_motors_forward();
      break;
    case 'D':
      dc_motors_set_speed(100);
      dc_motors_backward();
      break;
    case 'L':
      dc_motors_set_speed(50);
      dc_motors_left();
      break;
    case 'R':
      dc_motors_set_speed(50);
      dc_motors_right();
      break;
    case 'S':
      dc_motors_stop();
      break;
  }
}

void drive_mode(){
  if(mode == 'A')
    automatic_control();
  else if(mode == 'M') 
    manual_control();
}

int main(void)
{
  initUSART3(USART2_BAUDRATE_115200);
  initUSART2(USART2_BAUDRATE_115200);
  enIrqUSART3();
  servo_init();
  hcsr_init();
  dc_motors_init();
  dc_motors_stop();

  while(1){
    if(!check_input()) continue;
    drive_mode();
  }

  return 0;
}
