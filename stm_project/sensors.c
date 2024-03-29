#include "sensors.h"

void hcsr_init(void){
  RCC->AHB1ENR |= RCC_AHB1ENR_GPIOBEN;
  GPIOB->MODER |= 0x1 << TRIGGER_PIN*2;
  GPIOB->OTYPER = 0x00000000;
  GPIOB->OSPEEDR |= (0x3 << TRIGGER_PIN*2) |
                    (0x3 << ECHO_PIN*2);
  GPIOB->PUPDR |= 0x00000000;
}

float get_ultrasonic(void)
{
  const float speedOfSound = 0.0343;
  float distance = 0;
  uint32_t numTicks = 0;

  start:
  while (1)
  {
    GPIOB->ODR &= ~(0x1 << TRIGGER_PIN);
    delay_us(2);
    GPIOB->ODR |= (0x1 << TRIGGER_PIN);
    delay_us(10);
    GPIOB->ODR &= ~(0x1 << TRIGGER_PIN);

    int counter = 0;
    while ((GPIOB->IDR & (0x1 << ECHO_PIN)) == 0)
    {
      if (counter < 3)
      {
        counter++;
        continue;
      }

      goto start;
    }

    //3. Start measuring ECHO pulse width in usec
    numTicks = 0;
    while ((GPIOB->IDR & (0x1 << ECHO_PIN)) != 0)
    {
      numTicks++;
      delay_us(3);
      // vTaskDelay(0.0028 / portTICK_RATE_MS);
    };

    //4. Estimate distance in cm

    /* printUSART2("Ticks: %d\n", numTicks); */
    /* float num = (float)numTicks; */
    distance = ((numTicks * 0.0020 * speedOfSound) / 2) * 2000;
    /* printUSART2("Distance: %d\n", (int)distance); */
    //real_distance = (uint8_t)distance;
    return distance;
  }
}
