//
//  ViewController.m
//  Demo03
//
//  Created by Mac on 2024/1/15.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    UILabel *lable = [[UILabel alloc] init];
    lable.textColor = [UIColor redColor];
    lable.font = [UIFont systemFontOfSize:50];
    lable.text = @"demo03";
    lable.frame = CGRectMake(0, 0, 200, 40);
    lable.center = self.view.center;
    [self.view addSubview:lable];
}


@end
