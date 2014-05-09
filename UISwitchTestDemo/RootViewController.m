//
//  RootViewController.m
//  UISwitchTestDemo
//
//  Created by mac on 14-5-7.
//  Copyright (c) 2014年 mac. All rights reserved.
//

#import "RootViewController.h"
#define MAX_ZONE 5
@interface RootViewController ()

@end

@implementation RootViewController

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
    
    for (int i = 0; i < MAX_ZONE; i ++) {
        UISwitch *mySwitch = [[UISwitch alloc] initWithFrame:CGRectMake(100, 25 + 70*i, 51, 31)];
        //背景色
//        [mySwitch setBackgroundColor:[UIColor magentaColor]];
        //on=YES，部分颜色
        mySwitch.onTintColor = [UIColor redColor];
        //整体/on=NO色值
        mySwitch.tintColor = [UIColor blueColor];
        //开关响应方法
        [mySwitch addTarget:self action:@selector(changeValue:) forControlEvents:UIControlEventValueChanged];
        //开关状态
        mySwitch.on = NO;
        //大小
        mySwitch.transform = CGAffineTransformMakeScale(1+i/5.0, 1+i/5.0);
        [self.view addSubview:mySwitch];
    }
    
    
}

-(void)changeValue :(UISwitch *)s {
    
    
    
    
    
    NSLog(@"%d",s.on);
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
