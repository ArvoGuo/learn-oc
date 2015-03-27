//
//  main.m
//  Pointer
//
//  Created by Arvo on 15/3/27.
//  Copyright (c) 2015年 Arvo. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
  int *pi;
  int i=30 ;
  pi = &i;
//  printf("pi %d\n",&*pi);
  
  char a,*pa;
  a = 10;
  pa=&a;
  *pa = 20;
//  printf("%d\n",a);
  
  
  int c=20;

  int b = c;
  c = 30;
  printf("%d\n",b);
  return 0;
}
