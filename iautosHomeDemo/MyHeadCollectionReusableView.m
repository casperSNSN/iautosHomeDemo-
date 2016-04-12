
//
//  MyHeadCollectionReusableView.m
//  iautosHomeDemo
//
//  Created by 孙宁 on 16/4/11.
//  Copyright © 2016年 孙宁. All rights reserved.
//

#import "MyHeadCollectionReusableView.h"

@interface MyHeadCollectionReusableView ()

@end
@implementation MyHeadCollectionReusableView
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
        [self addSubview:self.headerLab];
    }
    return self;
}
-(UILabel *)headerLab
{
    if (!_headerLab) {
        _headerLab = [[UILabel alloc] initWithFrame:CGRectMake(0, 10, KScreenWidth, 40)];
        _headerLab.text = @"优质车源";
        _headerLab.textColor = [UIColor blueColor];
        _headerLab.backgroundColor = [UIColor whiteColor];
    }
    return _headerLab;
}

@end
