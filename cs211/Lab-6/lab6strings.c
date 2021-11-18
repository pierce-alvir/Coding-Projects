#include "lab6strings.h"

unsigned int strCase(char str1[], char str2[]){
  int count=0;
  int i=0;
  if(str1[0]=='\0')
    return count;
  while(str1[i]!='\0'){
    if((str1[i]>=65)&&(str1[i]<=90)){
      str2[i]=str1[i]+32;
      count++;
    }
    else if ((str1[i]>=97)&&(str1[i]<=122)){
      str2[i]=str1[i]-32;
      count++;
    }
    else
      str2[i]=str1[i];
    i++;
  }
  str2[i]='\0';
  return count;
}

unsigned int wordReverse(char * str1){
  if(*str1=='\0')
    return 0;
  int len=0;
  while(*str1!='\0'){
    if((*str1<65)||(*str1>122))
      return 0;
    else if ((*str1>90)&&(*str1<97))
      return 0;
    len++;
    str1++;
  }
  str1=str1-len;
  
  char *left, *right, temp;
  left = str1;
  right = &str1[len-1];
   
  while(left < right){
    temp = *right;
    *right = *left;
    *left = temp;
    left++;
    right--;
  } 
  return 1;  
}