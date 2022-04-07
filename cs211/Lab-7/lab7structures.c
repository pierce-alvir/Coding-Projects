#include "lab7structures.h"

unsigned int validate(Date d)
{
  if(d.year<1901||d.year>2020)
    return 0;
  else if (d.month==0||d.month>12)
    return 0;
  else if (d.day==0)
    return 0;
  else if (d.month==2&&d.day>29)
    return 0;
  else if ((d.month==4||d.month==6||d.month==9||d.month==11)&&(d.day>30))
    return 0;
  else if ((d.month==1||d.month==3||d.month==5||d.month==7||d.month==8||d.month==10||d.month==12)&&(d.day>31))
    return 0;
  else 
    return 1;
}
unsigned int calculateYear(Date d)
{
  if (d.month==1||d.month==2)
    return d.year-1;
  else
    return d.year;
}
unsigned int calculateMonth(Date d)
{
  if (d.month==1||d.month==2)
    return d.month+13;
  else
    return d.month+1;
}

unsigned int calculateN(Date d)
{
  return ((1461*calculateYear(d))/4)+((153*calculateMonth(d))/5)+d.day;
}

unsigned int elapsedDays(Date d1, Date d2)
{
  unsigned int N1, N2;
  if (validate(d1)==0||validate(d2)==0)
    return 0;
  N1=calculateN(d1);
  N2=calculateN(d2);
  return N2-N1;
}

unsigned int dayOfWeek(Date d, char daystr[])
{
  unsigned int N, dayValue;
  if (validate(d)==0)
    return 0;
  N = calculateN(d);
  dayValue = (N-621049)%7;
  if (dayValue==0)
    strcpy(daystr,"Sunday");    
  else if (dayValue==1)
    strcpy(daystr,"Monday");
  else if (dayValue==2)
    strcpy(daystr,"Tuesday");
  else if (dayValue==3)
    strcpy(daystr,"Wednesday");
  else if (dayValue==4)
    strcpy(daystr,"Thursday");
  else if (dayValue==5)
    strcpy(daystr,"Friday");
  else if (dayValue==6)
    strcpy(daystr,"Saturday");
  else
    return 0;
  return 1;
}
