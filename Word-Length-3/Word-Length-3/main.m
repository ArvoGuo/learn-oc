//
//  main.m
//  Word-Length-3
//
//  Created by Arvo on 15/3/25.
//  Copyright (c) 2015年 Arvo. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
  FILE *wordFile = fopen("/tmp/words.txt", "r");
  char word[100];
  
  while (fgets(word, 100, wordFile)) {
    //去除换行符
    word[strlen(word) - 1] = '\0';
    NSLog(@"%s is %lu characters long", word, strlen(word));
  }
  fclose(wordFile);
  
  return 0;
}
