//
//  main.m
//  Word-Length-4
//
//  Created by Arvo on 15/3/25.
//  Copyright (c) 2015年 Arvo. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
  if (argc == 1) {
    NSLog(@"you need to provide a file name");
    return (1);
  }
  
  FILE *wordFile = fopen(argv[1], "r");
  char word[100];
  while (fgets(word, 100, wordFile)) {
    word[strlen(word) - 1] = '\0';
    NSLog(@"%s is %lu characters long", word, strlen(word));
  }
  fclose(wordFile);
  return (0);
}
