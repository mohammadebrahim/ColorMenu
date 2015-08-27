//
//  PPColorView.h
//  colorDemo
//
//  Created by Ebr on 8/4/15.
//  Copyright (c) 2015 Ebr. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GzColors.h"
#import "PPColorButton.h"

@protocol PPColorViewDelegate <NSObject>

-(void)didColorSelected:(UIColor *)color;

@end

@interface PPColorView : UIView<UIScrollViewDelegate>

@property(nonatomic,strong)NSString *sDefaultHexa;
@property(nonatomic,strong)PPColorButton *lastClickedbtn;
@property(nonatomic,assign)id <PPColorViewDelegate>delegate;
@property(nonatomic,strong)    UIScrollView *scrmaim;
@property (nonatomic, strong) NSArray *colorCollection;


- (id)initWithFrame:(CGRect)frame defaultHexa:(NSString*)sDefaulthexa;
@end
