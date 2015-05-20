//
//  ViewController.m
//  subjectC
//
//  Created by 李育豪 on 2015/5/20.
//  Copyright (c) 2015年 ALPHACamp. All rights reserved.
//

#import "ViewController.h"


@interface ViewController () 

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)addStarInfoPress:(id)sender {
    if (_starName && _starAge) {
        [self.delegate addStarInfoPress:self];
    }else {
        UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"重新輸入"
                                                            message:nil
                                                           delegate:self
                                                  cancelButtonTitle:@"OK"
                                                  otherButtonTitles:nil, nil];
        [alertView show];
    }
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
