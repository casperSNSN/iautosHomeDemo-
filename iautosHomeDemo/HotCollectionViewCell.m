

//
//  HotCollectionViewCell.m
//  iautosHomeDemo
//
//  Created by 孙宁 on 16/4/11.
//  Copyright © 2016年 孙宁. All rights reserved.
//

#import "HotCollectionViewCell.h"

@interface HotCollectionViewCell ()
@property(nonatomic,strong)UILabel *priceLbl;//价格分类

@end

@implementation HotCollectionViewCell

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor whiteColor];
        [self.contentView addSubview:self.priceLbl];
    }
    return self;
}
#pragma mark -Property
-(UILabel*)priceLbl
{
    if (!_priceLbl) {
        _priceLbl = [[UILabel alloc] initWithFrame:CGRectMake(10, 0, KScreenWidth/4-20, 30)];
        _priceLbl.textColor = [UIColor blackColor];
        _priceLbl.layer.borderColor = (__bridge CGColorRef _Nullable)([UIColor lightGrayColor]);
        _priceLbl.layer.borderWidth = 5;
        _priceLbl.text = @"5万以内";
        _priceLbl.font = [UIFont systemFontOfSize:10];
       _priceLbl.backgroundColor = [UIColor orangeColor];
        
    }
    return _priceLbl;
}
@end
