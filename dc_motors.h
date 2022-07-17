#ifndef _MOTORS_H_
#define _MOTORS_H_

#define IN1 5 // D1
#define IN2 2  // D4
#define IN3 12 // D6
#define IN4 13  // D7
#define ENA 15  // D8
#define ENB 16  // D0

void dc_motors_init();
void dc_motors_forward();
void dc_motors_backward();
void dc_motors_left();
void dc_motors_right();
void dc_motors_stop();

#endif
