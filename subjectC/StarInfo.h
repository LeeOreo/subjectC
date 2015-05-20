//
//  StarInfo.h
//  subjectC
//
//  Created by 李育豪 on 2015/5/20.
//  Copyright (c) 2015年 ALPHACamp. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface StarInfo : NSObject

@property (strong,nonatomic) NSMutableArray *totalStarInfo;

- (void)addStar:(NSDictionary *)starInfo;

@end
