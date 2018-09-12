//
//  MyViewController.m
//  TestMyTPSDK
//
//  Created by Ren KunMing on 2018/4/7.
//  Copyright © 2018年 Ren KunMing. All rights reserved.
//

#import "MyViewController.h"
#import <SDKFramework/SDKFramework.h>

@interface MyViewController ()

@end

@implementation MyViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIButton *photoButton_1 = [UIButton buttonWithType:UIButtonTypeCustom];
    photoButton_1.frame = CGRectMake(20, 130, self.view.frame.size.width-40, 50);
    [photoButton_1 setTitle:@"IntoMyTPSDK" forState:UIControlStateNormal];
    photoButton_1.backgroundColor = [UIColor orangeColor];
    photoButton_1.layer.cornerRadius = 5;
    photoButton_1.layer.masksToBounds = YES;
    [photoButton_1 setAdjustsImageWhenHighlighted:NO];
    [photoButton_1 addTarget:self action:@selector(intoMyTPSDK:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:photoButton_1];
    
}



#pragma mark -
-(void)intoMyTPSDK:(UIButton *)button
{
    ViewController *testSDKVC = [[ViewController alloc]init];
    
    [self presentViewController:testSDKVC animated:YES completion:^{
        NSLog(@"PresentMyTPSDK ~ !");
    }];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
 }
 */

@end
