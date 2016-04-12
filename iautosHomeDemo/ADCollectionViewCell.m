//
//  ADCollectionViewCell.m
//  iautosHomeDemo
//
//  Created by 孙宁 on 16/4/11.
//  Copyright © 2016年 孙宁. All rights reserved.
//

#import "ADCollectionViewCell.h"
#import "AdScrollView.h"
#import "AdDataModel.h"

@interface ADCollectionViewCell ()

@property(nonatomic,strong)AdScrollView *scrollView;//轮播图

@end

@implementation ADCollectionViewCell
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor whiteColor];
        [self addSubview:self.scrollView];
    }
    return self;
}
#pragma mark -Property
#pragma mark -Property
-(AdScrollView*) scrollView
{
    if (!_scrollView) {
        _scrollView = [[AdScrollView alloc]initWithFrame:CGRectMake(0, 0, KScreenWidth, 150)];
        AdDataModel * dataModel = [AdDataModel adDataModelWithImageName];
        //如果滚动视图的父视图由导航控制器控制,必须要设置该属性(ps,猜测这是为了正常显示,导航控制器内部设置了UIEdgeInsetsMake(64, 0, 0, 0))
        _scrollView.contentInset = UIEdgeInsetsMake(0, 0, 0, 0);
        _scrollView.imageNameArray = dataModel.imageNameArray;
        _scrollView.PageControlShowStyle = UIPageControlShowStyleCenter;
        _scrollView.pageControl.pageIndicatorTintColor = [UIColor lightGrayColor];
        //        [_scrollView setAdTitleArray:dataModel.adTitleArray withShowStyle:AdTitleShowStyleLeft];
        _scrollView.pageControl.currentPageIndicatorTintColor = [UIColor grayColor];
    }
    return _scrollView;
}

@end
