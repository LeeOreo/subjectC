//
//  ViewController.h
//  subjectC
//
//  Created by 李育豪 on 2015/5/20.
//  Copyright (c) 2015年 ALPHACamp. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ViewController;
// Protocol define
@protocol starInfoDelegate <NSObject>
@required
- (void)addStarInfoPress:(ViewController *)viewcontroller;
@end




@interface ViewController : UIViewController

@property (weak, nonatomic) id <starInfoDelegate> delegate;

@property (strong, nonatomic) IBOutlet UITextField *starName;
@property (strong, nonatomic) IBOutlet UITextField *starAge;

@end

