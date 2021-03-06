//
//  MainViewController.m
//  滚动的图片
//
//  Created by 萨斯辈的呼唤 on 14-6-18.
//  Copyright (c) 2014年 萨斯辈的呼唤. All rights reserved.
//

#import "MainViewController.h"
#import "AutoScrollView.h"

@interface MainViewController ()

@end

@implementation MainViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    NSMutableArray *images = [[NSMutableArray alloc] init];
    for (int i = 0; i < 5; i ++) {
        NSString *str = [NSString stringWithFormat:@"%d.jpg", i];
        [images addObject:str];
    }
//    NSLog(@"%@", images);
    
    AutoScrollView *view = [[AutoScrollView alloc] initWithFrame:CGRectMake(0, 0, 320, 480) imageNames:images];
    [view setTimeInterval:2];
    
    [self.view addSubview:view];
    
    [view release];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
