

//
//  CarNameCollectionViewCell.m
//  iautosHomeDemo
//
//  Created by 孙宁 on 16/4/12.
//  Copyright © 2016年 孙宁. All rights reserved.
//

#import "CarNameCollectionViewCell.h"


@interface CarNameCollectionViewCell ()

@property(nonatomic,strong)UIImageView *imgView;
@property(nonatomic,strong)UILabel *carNameLbl;

@end

@implementation CarNameCollectionViewCell
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor whiteColor];
        [self.contentView addSubview:self.imgView];
        [self.contentView addSubview:self.carNameLbl];
    }
    return self;
}
#pragma mark -Property
-(UIImageView*)imgView
{
    if (!_imgView) {
        _imgView = [[UIImageView alloc] initWithFrame:CGRectMake(20, 10, (KScreenWidth/4)-40, 40)];
          _imgView.backgroundColor = [UIColor purpleColor];
    }
    return _imgView;
}

-(UILabel*)carNameLbl
{
    if (!_carNameLbl) {
        _carNameLbl = [[UILabel alloc] initWithFrame:CGRectMake(20, _imgView.bottom+5, (KScreenWidth/4)-40, 15)];
        _carNameLbl.textColor = [UIColor blackColor];
        _carNameLbl.backgroundColor = [UIColor brownColor];
        _carNameLbl.font = [UIFont systemFontOfSize:10];
        
    }
    return _carNameLbl;
}
@end
