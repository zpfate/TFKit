//
//  TF_NavigationViewController.m
//  DaHuaDemo
//
//  Created by Twisted Fate on 2018/11/13.
//  Copyright © 2018 TwistedFate. All rights reserved.
//

#import "TF_NavigationViewController.h"

@interface TF_NavigationViewController ()

@end

@implementation TF_NavigationViewController

- (instancetype)initWithRootViewController:(UIViewController *)rootViewController {
    
    if (self = [super initWithRootViewController:rootViewController]) {
        
    }
    return self;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    // Do any additional setup after loading the view.
}



- (BOOL)shouldAutorotate {
    return self.visibleViewController.shouldAutorotate;
}

- (UIInterfaceOrientationMask)supportedInterfaceOrientations {
    return self.visibleViewController.supportedInterfaceOrientations;
}

@end
