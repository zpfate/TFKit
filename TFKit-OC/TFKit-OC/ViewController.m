//
//  ViewController.m
//  TFKit-OC
//
//  Created by Twisted Fate on 2019/6/19.
//  Copyright © 2019 TwistedFate. All rights reserved.
//

#import "ViewController.h"
#import "TFKit/TFKit.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    NSString *home = [TF_FileUtils homeDirectory];
    NSLog(@"home === %@", home);
    
    NSString *doucment = [TF_FileUtils documentDirectory];
    NSLog(@"doucment === %@", doucment);

    NSString *cache = [TF_FileUtils cachesDirectory];
    NSLog(@"cache === %@", cache);

    NSString *temp = [TF_FileUtils tempDirectory];
    NSLog(@"temp === %@", temp);

    NSString *testPath = [cache stringByAppendingPathComponent:@"test"];
    [TF_FileUtils createDirectoryAtPath:testPath completionHandle:^(BOOL flag, NSError *error) {
       
        NSLog(@"flag === %d error === %@", flag, error);
        
    }];
    
    
    
}


@end
