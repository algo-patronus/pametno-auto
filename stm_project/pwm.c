#include "pwm.h"

void pwm_set_duty(int duty){
  TIM3->CCR1 = duty;
}

void pwm_init(unsigned short period, unsigned short pin, unsigned short duty_cycle){
  RCC->AHB1ENR  |= RCC_AHB1ENR_GPIOCEN;
  GPIOC->MODER  |= 0x2 << pin*2;
  GPIOC->OTYPER |= 0x00000000;
  GPIOC->AFR[0] |= 0x02000000;

  RCC->APB1ENR  |= RCC_APB1ENR_TIM3EN;
  TIM3->PSC      = PWM_PERIOD_PSC - 1;
  TIM3->ARR      = 20000;

  TIM3->CCR1     = duty_cycle;

  TIM3->CCMR1   |= (TIM_CCMR1_OC1PE)|(TIM_CCMR1_OC1M_2)|(TIM_CCMR1_OC1M_1);
  TIM3->CCMR1   |= (TIM_CCMR1_OC2PE)|(TIM_CCMR1_OC2M_2)|(TIM_CCMR1_OC2M_1);
  TIM3->CCMR2   |= (TIM_CCMR2_OC3PE)|(TIM_CCMR2_OC3M_2)|(TIM_CCMR2_OC3M_1);
  TIM3->CCMR2   |= (TIM_CCMR2_OC4PE)|(TIM_CCMR2_OC4M_2)|(TIM_CCMR2_OC4M_1);
  TIM3->CCMR1   |= (TIM_CCMR1_OC1PE)|(TIM_CCMR1_OC1M_2)|(TIM_CCMR1_OC1M_1);

  TIM3->CCER    &= ~((TIM_CCER_CC1P));
  TIM3->CR1     |= (TIM_CR1_ARPE)|(TIM_CR1_URS);
  TIM3->EGR     |= TIM_EGR_UG;
  TIM3->CCER    |= (TIM_CCER_CC1E)|(TIM_CCER_CC2E)|(TIM_CCER_CC3E)|(TIM_CCER_CC4E);
  TIM3->CR1     |= TIM_CR1_CEN;
}
