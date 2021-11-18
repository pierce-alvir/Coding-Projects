#include "lab5pointers.h"

int flipSign(int *x){
  if(*x==0)
    return 0;
  else
  {
    *x=-*x;
    return 1;
  }
}

int compareAndSwap(int *x, int *y){
  if(*x<*y)
    return 1;
  else if(*x>*y)
  { 
    int holder = *x;
    *x=*y;
    *y=holder;
    return -1;
  }
  else
    return 0;
}

int * searchArray(int array[], int size, int item){
  for(int i=0;i<=size;i++)
  {
    if(array[i]==item)
      return &array[i];
  }
  return NULL;
}

int copyString(char str1[], char str2[]){
  strcpy(str2, str1);
  int length = 1;
  while (*str2 != '\0'){
    length++;
    str2++;
  }
  return length;
}
