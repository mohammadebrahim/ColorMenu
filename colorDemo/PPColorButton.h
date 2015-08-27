//
//  PPColorButton.h
//  colorDemo
//
//  Created by Prosares on 8/4/15.
//  Copyright (c) 2015 Prosares. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GzColors.h"

@interface PPColorButton : UIButton

@property (strong) NSString *hexColor;
@property (strong) UIView *bottomLineView;

-(id)initWithFrame:(CGRect)frame HexaColor:(NSString *)hexaColor;
@end
