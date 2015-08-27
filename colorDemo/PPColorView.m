//
//  PPColorView.m
//  colorDemo
//
//  Created by Prosares on 8/4/15.
//  Copyright (c) 2015 Prosares. All rights reserved.
//

#import "PPColorView.h"

#define ButtonWidth 30

@implementation PPColorView
@synthesize scrmaim;
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (id)initWithFrame:(CGRect)frame defaultHexa:(NSString*)sDefaulthexa{
    self = [super initWithFrame:frame];
    if (self) {
        self.sDefaultHexa = sDefaulthexa;
        [self createSimplyfiedOrdenatedColorsArray];
        [self addScrollView];
        [self createButton];
    }
    return self;
}


-(void)addScrollView{
    scrmaim = [[UIScrollView alloc]initWithFrame:self.bounds];
    scrmaim.delegate =nil;
    scrmaim.showsHorizontalScrollIndicator = NO;
    [scrmaim setContentSize:CGSizeMake((self.colorCollection.count * ButtonWidth), self.bounds.size.height)];
    [self addSubview:scrmaim];
}

-(void)createButton{
    for (int i = 0; i < self.colorCollection.count; i++) {
        PPColorButton *ppColor = [[PPColorButton alloc]initWithFrame:CGRectMake((i*ButtonWidth) - (i*5), 0, ButtonWidth, 40) HexaColor:[self.colorCollection objectAtIndex:i]];
        [ppColor addTarget:self action:@selector(colorButton_Clicked:) forControlEvents:UIControlEventTouchUpInside];
        [scrmaim addSubview:ppColor];
        
        if([[self.colorCollection objectAtIndex:i] isEqualToString:self.sDefaultHexa])
            ppColor.bottomLineView.backgroundColor = [GzColors colorFromHex:self.sDefaultHexa];
    }
}

-(void)colorButton_Clicked:(PPColorButton *)sender{
    if(self.lastClickedbtn)
    self.lastClickedbtn.bottomLineView.backgroundColor = [UIColor clearColor];
    self.lastClickedbtn = sender;
    sender.bottomLineView.backgroundColor = [UIColor blackColor];
    if ([self.delegate respondsToSelector:@selector(didColorSelected:)])
        [self.delegate didColorSelected:[GzColors colorFromHex:sender.hexColor]];

}


-(void) createSimplyfiedOrdenatedColorsArray{
    self.colorCollection = [NSArray arrayWithObjects:
                            
                            IndianRed,
                            LightCoral,
                            Red,
                            Crimson,
                            Firebrick,
                            DarkRed,
                            
                            Coral,
                            Tomato,
                            OrangeRed,
                            Orange,
                            Gold,
                            Yellow,
                            
                            Pink,
                            HotPink,
                            DeepPink,
                            Fuchsia,
                            Magenta,
                            Purple,
                            
                            SeaGreen,
                            ForestGreen,
                            Green,
                            DarkGreen,
                            OliveDrab,
                            Olive,
                            
                            DeepSkyBlue,
                            CornflowerBlue,
                            RoyalBlue,
                            Blue,
                            DarkBlue,
                            MidnightBlue,
                            
                            Goldenrod,
                            DarkGoldenrod,
                            Chocolate,
                            SaddleBrown,
                            Brown,
                            Maroon,
                            
                            White,
                            Snow,
                            Gainsboro,
                            LightGray,
                            Silver,
                            DarkGray,
                            
                            Gray,
                            DimGray,
                            LightSlateGray,
                            SlateGray,
                            DarkSlateGray,
                            Black, nil];
}
@end
