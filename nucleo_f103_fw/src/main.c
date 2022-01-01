/*
 * main.c
 *
 *  Created on: Jan 1, 2022
 *      Author: baram
 */


#include "main.h"


uint32_t data_a = 10;         // .data
uint32_t bss_a;               // .bss
const uint32_t const_a = 20;  // ?




int main(void)
{

  while(1)
  {
    data_a++;
    bss_a += const_a;
  }

  return 0;
}
