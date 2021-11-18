#include "lab3binary.h"

unsigned int leftmostOnePos(int number){
  unsigned int count=0;
  for(int i=0;i<ARRAY_SIZE;i++){
    if(number&1)  
      count=i+1;
    number = number>>1;
  }
  return count;   
}


void convertAndOrder(int number, int binary[]){
  for(int i=0;i<ARRAY_SIZE;i++)
    binary[i]=0;
  int binary_size=leftmostOnePos(number);
  if(number%2==0)//even
  {  
    for(int i=ARRAY_SIZE-1;i>binary_size-1;i--){
      if(number&1)
        binary[i]=1;
      else
        binary[i]=0;
      number = number>>1;
    }
  }
  else//odd
  {
    for(int i=0;i<ARRAY_SIZE;i++){
      if(number&1)
        binary[i]=1;
      else
        binary[i]=0;
      number = number>>1;
    }
  }
}
