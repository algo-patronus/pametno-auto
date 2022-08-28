#include "dc_motors.h"

static int speed = 0;

void dc_motors_init(){
  RCC->AHB1ENR |= RCC_AHB1ENR_GPIODEN;
  RCC->AHB1ENR |= RCC_AHB1ENR_GPIOBEN;
  // GPIOD->MODER |= 0x00001554;
  
  GPIOD->MODER |= (0x0001 << ENA*2) | 
                  (0x0001 << ENB*2) ;

  GPIOB->MODER |= (0x0002 << IN1*2) | 
                  (0x0002 << IN2*2) | 
                  (0x0002 << IN3*2) |
                  (0x0002 << IN4*2) ;

  GPIOB->AFR[0] |= 0x22000000;
  GPIOB->AFR[1] |= 0x00000022;

  GPIOD->OTYPER = 0x00000000;
  GPIOB->OTYPER = 0x00000000;
  //GPIOD->OSPEEDR |= 0x00003FFC;
  GPIOD->OSPEEDR |= (0x0003 << ENA*2) | 
                    (0x0003 << ENB*2) ;

  GPIOD->PUPDR |= 0x00000000;

  GPIOD->ODR &= ~(0x0001 << ENA) | 
                 (0x0001 << ENB) ;

  RCC->APB1ENR  |= RCC_APB1ENR_TIM4EN;
  TIM4->PSC      = PWM_PERIOD_PSC - 1;
  TIM4->ARR      = PWM_PERIOD;

  TIM4->CCR1 = 0;
  TIM4->CCR2 = 0;
  TIM4->CCR3 = 0;
  TIM4->CCR4 = 0;

  TIM4->CCMR1   |= (TIM_CCMR1_OC1PE)|(TIM_CCMR1_OC1M_2)|(TIM_CCMR1_OC1M_1);
  TIM4->CCMR1   |= (TIM_CCMR1_OC2PE)|(TIM_CCMR1_OC2M_2)|(TIM_CCMR1_OC2M_1);
  TIM4->CCMR2   |= (TIM_CCMR2_OC3PE)|(TIM_CCMR2_OC3M_2)|(TIM_CCMR2_OC3M_1);
  TIM4->CCMR2   |= (TIM_CCMR2_OC4PE)|(TIM_CCMR2_OC4M_2)|(TIM_CCMR2_OC4M_1);

  TIM4->CCER    &= ~((TIM_CCER_CC1P)|(TIM_CCER_CC2P)|(TIM_CCER_CC3P)|(TIM_CCER_CC4P));
  TIM4->CR1     |= (TIM_CR1_ARPE)|(TIM_CR1_URS);
  TIM4->EGR     |= TIM_EGR_UG;
  TIM4->CCER    |= (TIM_CCER_CC1E)|(TIM_CCER_CC2E)|(TIM_CCER_CC3E)|(TIM_CCER_CC4E);
  TIM4->CR1     |= TIM_CR1_CEN;
}

void dc_motors_set_direction(int a, int b, int c, int d){  
  TIM4->CCR1 = a/100. * PWM_PERIOD;
  TIM4->CCR2 = b/100. * PWM_PERIOD;
  TIM4->CCR3 = c/100. * PWM_PERIOD;
  TIM4->CCR4 = d/100. * PWM_PERIOD;
}

void dc_motors_set_speed(int s){
  speed = s;
}

void dc_motors_start(){
  GPIOD->ODR |= (0x0001 << ENA) |
                (0x0001 << ENB) ;
}

void dc_motors_forward(){
  dc_motors_set_direction(speed, 0, 0, speed);
  dc_motors_start();
}

void dc_motors_backward(){
  dc_motors_set_direction(0, speed, speed, 0);
  dc_motors_start();
}

void dc_motors_left(){
  dc_motors_set_direction(speed, 0, speed, 0);
  dc_motors_start();
}

void dc_motors_right(){
  dc_motors_set_direction(0, speed, 0, speed);
  dc_motors_start();
}

void dc_motors_stop(){
  GPIOD->ODR &= ~((0x0001 << ENA) | (0x0001 << ENB));
}
