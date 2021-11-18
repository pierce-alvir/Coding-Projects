#include "lab4prime.h"

unsigned int isPrime(unsigned int number){
  if (number<2)
    return 0;
  for(int i=2;i<number;i++)
  {
    if(number%i==0)
      return 0;
  }
  return 1;
}

unsigned int maxPrimeFactor(unsigned int number){
  for(unsigned int i=number;i>=2;i--)
  {
    if(number%i==0 && isPrime(i)==1)
      return i;
  }
  return 0;
}