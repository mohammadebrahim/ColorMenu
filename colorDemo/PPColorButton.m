//
//  PPColorButton.m
//  colorDemo
//
//  Created by Prosares on 8/4/15.
//  Copyright (c) 2015 Prosares. All rights reserved.
//

#import "PPColorButton.h"

@implementation PPColorButton

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

-(id)initWithFrame:(CGRect)frame HexaColor:(NSString *)hexaColor{
    self = [super initWithFrame:frame];
    if (self) {
        self.hexColor = hexaColor;
        UILabel *lbl = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, 30, 30)];
        lbl.layer.backgroundColor = [GzColors colorFromHex:self.hexColor].CGColor;
        lbl.layer.cornerRadius = 15;
        lbl.layer.borderWidth = 1.0f;
        lbl.layer.borderColor = [UIColor whiteColor].CGColor;
        [self addSubview:lbl];
        
        self.bottomLineView = [[UIView alloc]initWithFrame:CGRectMake(0, 35, self.bounds.size.width, 2)];
        self.bottomLineView.backgroundColor =[UIColor clearColor];
        [self addSubview:self.bottomLineView];
    }
    return self;
}

@end
