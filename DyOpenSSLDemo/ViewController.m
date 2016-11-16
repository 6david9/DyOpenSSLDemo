//
//  ViewController.m
//  DyOpenSSLDemo
//
//  Created by ly on 16/11/2016.
//  Copyright © 2016 Cocoabit. All rights reserved.
//

#import "ViewController.h"
#import <openssl/md5.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
  [super viewDidLoad];

  unsigned char *result = (unsigned char *)malloc(sizeof(unsigned char) * MD5_DIGEST_LENGTH);

  MD5_CTX ctx;
  MD5_Init(&ctx);
  char *data = "it works";
  MD5_Update(&ctx, data, strlen(data));
  MD5_Final(result, &ctx);
  
  for (int i = 0; i < MD5_DIGEST_LENGTH; i++) {
    printf("%x", result[i]);
  }
  puts("");

  free(result);
}

@end
