//
//  StarTableViewController.m
//  subjectC
//
//  Created by 李育豪 on 2015/5/20.
//  Copyright (c) 2015年 ALPHACamp. All rights reserved.
//

#import "StarTableViewController.h"
#import "StarTableViewCell.h"
#import "StarInfo.h"
#import "ViewController.h"

@interface StarTableViewController () <starInfoDelegate>
{
//    NSMutableArray *starNameArray;
//    NSMutableArray *starAgeArray;
//    NSMutableArray *starInfoArray;
    StarInfo *starInfo;
}
@end

@implementation StarTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    starNameArray = [[NSMutableArray alloc] init];
//    starAgeArray = [[NSMutableArray alloc] init];
    starInfo = [[StarInfo alloc] init];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



#pragma mark -private
- (void)addStarInfoPress:(ViewController *)viewcontroller {
    
    NSDictionary *starInfoDic = @{@"name" : viewcontroller.starName,
                                  @"age" : viewcontroller.starAge};
    [starInfo addStar:starInfoDic];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return starInfo.totalStarInfo.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *starInfoIndicator = @"starInfoCell";
    StarTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:starInfoIndicator];
    
    cell.starName.text = [[starInfo.totalStarInfo objectAtIndex:indexPath.row] objectForKey:@"name"];
    cell.starAge.text = [[starInfo.totalStarInfo objectAtIndex:indexPath.row] objectForKey:@"age"];
    
    [tableView reloadData];
    return cell;
}


@end
