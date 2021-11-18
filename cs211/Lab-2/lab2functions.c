#include "lab2.h"

void introduction(void){
  printf("2021 Fall CS211: Programming I for Engineers \nLab-2 Project \n");
}

float castToFloat(int numi){
  return (float)numi;
}

double circleArea(int radius){
  return PI*radius*radius;
}

int circlePerimeter(int radius){
  return 2*PI*radius;
}

int fahrenheit2Celsius(int fahrenheit){
  return (fahrenheit-32)*5/9;
}

unsigned int factorial(unsigned int num){
  int i, total = 1;
  for (i=num;i>0;i--)
  {
  total*=i;
  }
  return total;
}

