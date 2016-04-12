

//
//  MyFootCollectionReusableView.m
//  iautosHomeDemo
//
//  Created by 孙宁 on 16/4/11.
//  Copyright © 2016年 孙宁. All rights reserved.
//

#import "MyFootCollectionReusableView.h"


@interface MyFootCollectionReusableView ()

@property(nonatomic,strong)UIButton *topBtn;
@property(nonatomic,strong)UIButton *SUVBtn;
@property(nonatomic,strong)UIButton *MPVBtn;
@property(nonatomic,strong)UIButton *carBtn;

@end

@implementation MyFootCollectionReusableView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self addSubview:self.topBtn];
        [self addSubview:self.SUVBtn];
        [self addSubview:self.MPVBtn];
        [self addSubview:self.carBtn];
    }
    return self;
}
#pragma mark -Property
-(UIButton*)topBtn
{
    if (!_topBtn) {
        _topBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        _topBtn.frame = CGRectMake(0, 10, KScreenWidth, 150);
        [_topBtn setTitle:@"居家出行" forState:UIControlStateNormal];
        _topBtn.backgroundColor = [UIColor redColor];
        [_topBtn addTarget:self action:@selector(topBtnAction) forControlEvents:UIControlEventTouchUpInside];
    }
    return _topBtn;
}

-(UIButton *)SUVBtn
{
    if (!_SUVBtn) {
        _SUVBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        _SUVBtn.frame = CGRectMake(0, _topBtn.bottom, KScreenWidth/2, 200);
        [_SUVBtn setTitle:@"SUV" forState:UIControlStateNormal];
        _SUVBtn.backgroundColor = [UIColor orangeColor];
        [_SUVBtn addTarget:self action:@selector(SUVBtnAction) forControlEvents:UIControlEventTouchUpInside];
        
    }
    return _SUVBtn;
}

-(UIButton *)MPVBtn
{
    if (!_MPVBtn) {
        _MPVBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        _MPVBtn.frame = CGRectMake(_SUVBtn.right, _topBtn.bottom, KScreenWidth/2, 100);
        [_MPVBtn setTitle:@"MPV" forState:UIControlStateNormal];
        _MPVBtn.backgroundColor = [UIColor greenColor];
        [_MPVBtn addTarget:self action:@selector(MPVBtnAction) forControlEvents:UIControlEventTouchUpInside];
    }
    return _MPVBtn;
}

-(UIButton *)carBtn
{
    if (!_carBtn) {
        _carBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        _carBtn.frame = CGRectMake(_SUVBtn.right, _MPVBtn.bottom, KScreenWidth/2, 100);
        [_carBtn setTitle:@"新车" forState:UIControlStateNormal];
        _carBtn.backgroundColor = [UIColor purpleColor];
        [_carBtn addTarget:self action:@selector(carBtnAction) forControlEvents:UIControlEventTouchUpInside];
    }
    return _carBtn;
}

#pragma mark -Action
-(void)topBtnAction
{
    NSLog(@"点击了居家旅行");
}
-(void)SUVBtnAction
{
    NSLog(@"点击了SUV");
}
-(void)MPVBtnAction
{
    NSLog(@"点击了MPV");
}
-(void)carBtnAction
{
    NSLog(@"点击了新车");
}
@end
