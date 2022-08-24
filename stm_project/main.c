#include "stm32f4xx.h"
#include "usart.h"
#include "delay.h"
#include "pwm.h"
#include "sensors.h"
#include "dc_motors.h"

#define STOP_DISTANCE 40
#define MAX_DISTANCE 150

char mode = 'M', direction = 'S';
char ready = 6;
int move = 0, right_distance = 0, middle_distance = 0, left_distance = 0;

void check_input(){
  if(g_usart3_ridx != g_usart3_widx){
    char letter = g_usart3_buffer[g_usart3_ridx++];
    
    printUSART2("Dobili smo: %c\n", letter);
    if(g_usart3_ridx >= (USART3_BUFFER_SIZE))
    {
      g_usart3_ridx = 0;
    }
    /* while(letter == g_usart3_buffer[g_usart3_ridx]){ */
    /*   g_usart3_ridx++; */
    /*   if(g_usart3_ridx >= (USART3_BUFFER_SIZE)) */
    /*     g_usart3_ridx = 0; */
    /* } */
    if(letter == 'M' || letter == 'A'){
      if(mode != 'M')
        move = (letter == 'M') ? 0 : 1;
      mode = letter;
    }
    else if(letter == 'S' || letter == 'L' || letter == 'D' || letter == 'U' || letter == 'R'){
      if(mode == 'M'){
        direction = letter;
        if(letter == 'S') 
          move = 0;
        else 
          move = 1;
      }
    }
  }
}

int max_distance(int left, int right){
  return (left > right) ? left : right;
}

void automatic_control(){
  servo_90();
  while(mode == 'A'){
    check_input();
    
    while((middle_distance = get_ultrasonic()) >= STOP_DISTANCE && mode == 'A'){
      dc_motors_forward();
      check_input();
    }

    if(mode == 'M')
      break;

    dc_motors_stop();

    servo_0();
    delay_ms(500);
    right_distance = get_ultrasonic();
    delay_ms(500);
    servo_180();
    delay_ms(500);
    left_distance = get_ultrasonic();
    delay_ms(500);

    servo_90();

    int max = max_distance(left_distance, right_distance);

    /* printUSART2("Left distance: %d\tRight distance: %d\tMid distance: %d\n", */
    /*     left_distance, right_distance, middle_distance); */

    if(max == left_distance)
      dc_motors_left();
    else
      dc_motors_right();

  }

  move = 0;
  dc_motors_stop();
  servo_90();
}

void manual_control(){
  if(!move) return;
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
  /* while(direction == 'U' || direction == 'D' || direction == 'L' || direction == 'R') */
  /*   check_input(); */
}

void drive_mode(){
  if(mode == 'A')
    automatic_control();
  else if(mode == 'M') 
    manual_control();
}

int main(void)
{
  printUSART2("Init");
  initUSART3(USART2_BAUDRATE_115200);
  initUSART2(USART2_BAUDRATE_115200);
  enIrqUSART3();
  servo_init();
  hcsr_init();
  dc_motors_init();
  dc_motors_stop();
  delay_ms(5000);
  

  /* while(!ready){ */
  /*   if(g_usart3_ridx != g_usart3_widx){ */
  /*     char letter = g_usart3_buffer[g_usart3_ridx++]; */
  /*     if(g_usart3_ridx >= (USART3_BUFFER_SIZE)) */
  /*     { */
  /*       g_usart3_ridx = 0; */
  /*     } */
  /*     ready = (letter == 'G') ? 1 : 0; */
  /*   } */
  /* } */

  while(1){
    check_input();
    drive_mode();
  }

  return 0;
}
