//
//  ViewController.m
//  colorDemo
//
//  Created by Prosares on 8/4/15.
//  Copyright (c) 2015 Prosares. All rights reserved.
//

#import "ViewController.h"
#import "PPColorView.h"

@interface ViewController ()<PPColorViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    PPColorView *pp = [[PPColorView alloc]initWithFrame:CGRectMake(0, 50, self.view.bounds.size.width, 40) defaultHexa:@"0xFF00008B"];
    pp.delegate = self;
    [self.view addSubview:pp];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)didColorSelected:(UIColor *)color{
    self.view.backgroundColor = color;
}

@end
