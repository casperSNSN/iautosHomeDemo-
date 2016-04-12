//
//  HighQualityCollectionViewCell.m
//  iautosHomeDemo
//
//  Created by 孙宁 on 16/4/11.
//  Copyright © 2016年 孙宁. All rights reserved.
//

#import "HighQualityCollectionViewCell.h"

@interface HighQualityCollectionViewCell ()
@property(nonatomic,strong)UIImageView *imageView;

@end

@implementation HighQualityCollectionViewCell
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor whiteColor];
        [self.contentView addSubview:self.imageView];
    }
    return self;
}
#pragma mark -Property
-(UIImageView*)imageView
{
    if (!_imageView) {
        _imageView = [[UIImageView alloc] initWithFrame:CGRectMake(10, 10, (KScreenWidth-30)/2, 130)];
        _imageView.backgroundColor = [UIColor redColor];
        _imageView.layer.borderColor = [UIColor grayColor].CGColor;
        _imageView.layer.borderWidth = 2;
    }
    return _imageView;
}
@end
