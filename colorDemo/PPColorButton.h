//
//  PPColorButton.h
//  colorDemo
//
//  Created by Ebr on 8/4/15.
//  Copyright (c) 2015 Ebr. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GzColors.h"

@interface PPColorButton : UIButton

@property (strong) NSString *hexColor;
@property (strong) UIView *bottomLineView;

-(id)initWithFrame:(CGRect)frame HexaColor:(NSString *)hexaColor;
@end
