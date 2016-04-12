//
//  ViewController.m
//  iautosHomeDemo
//
//  Created by 孙宁 on 16/4/11.
//  Copyright © 2016年 孙宁. All rights reserved.
//

#import "ViewController.h"

#import "ADCollectionViewCell.h"//轮播图
#import "CarNameCollectionViewCell.h"//宝马，，，，，，
#import "HotCollectionViewCell.h"//热门价格
#import "HighQualityCollectionViewCell.h"//优质车源

#import "MyFootCollectionReusableView.h"//尾视图
#import "MyHeadCollectionReusableView.h"//title视图


@interface ViewController ()<UICollectionViewDataSource,UICollectionViewDelegate,UICollectionViewDelegateFlowLayout>
@property(nonatomic,strong)UICollectionView *collectionView
;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"第一车网";
    [self.view addSubview:self.collectionView];
}
#pragma mark -Property
- (UICollectionView *)collectionView
{
    if (!_collectionView) {
        _collectionView = [[UICollectionView alloc] initWithFrame:CGRectMake(0, 0, KScreenWidth, KScreenHeight) collectionViewLayout:[[UICollectionViewFlowLayout alloc] init]];
        _collectionView.dataSource = self;
        _collectionView.delegate = self;
        _collectionView.backgroundColor = [UIColor colorWithRed:0.91 green:0.91 blue:0.91 alpha:1];
        [_collectionView registerClass:[ADCollectionViewCell class] forCellWithReuseIdentifier:@"ADCollectionViewCell"];
        [_collectionView registerClass:[CarNameCollectionViewCell class] forCellWithReuseIdentifier:@"CarNameCollectionViewCell"];
        [_collectionView registerClass:[HotCollectionViewCell class] forCellWithReuseIdentifier:@"HotCollectionViewCell"];
        [_collectionView registerClass:[HighQualityCollectionViewCell class] forCellWithReuseIdentifier:@"HighQualityCollectionViewCell"];

         [_collectionView registerClass:[MyHeadCollectionReusableView class] forSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:@"HeaderView"];
        
        [_collectionView registerClass:[MyFootCollectionReusableView class] forSupplementaryViewOfKind:UICollectionElementKindSectionFooter withReuseIdentifier:@"FooterView"];

    }
    return _collectionView;
}

#pragma mark - UICollectionViewDelegate
//section
- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return 4;
}
//item个数
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    switch (section) {
        case 0:
            return 1;
            break;
        case 1:
            return 8;
            break;
        case 2:
            return 8;
            break;
        case 3:
            return 4;
            break;
    }
    return 0;
}

//每个UICollectionView展示的内容
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.section == 0) {
        ADCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"ADCollectionViewCell" forIndexPath:indexPath];
        cell.backgroundColor = [UIColor redColor];
        return cell;
    }else if (indexPath.section == 1) {
        CarNameCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"CarNameCollectionViewCell" forIndexPath:indexPath];
        cell.backgroundColor = [UIColor greenColor];
        return cell;
    }else if (indexPath.section == 2) {
        HotCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"HotCollectionViewCell" forIndexPath:indexPath];
        cell.backgroundColor = [UIColor yellowColor];
        return cell;
    }else if (indexPath.section == 3) {
        HighQualityCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"HighQualityCollectionViewCell" forIndexPath:indexPath];
        cell.backgroundColor = [UIColor purpleColor];
        return cell;
    }
    return nil;
}
//每个cell大小
- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.section == 0) {
        return CGSizeMake(KScreenWidth, 150.f);
    }else if (indexPath.section == 1){
        return CGSizeMake(KScreenWidth/4, KScreenWidth/4);

    }else if (indexPath.section == 2){
        return CGSizeMake(KScreenWidth/4, 40.f);
    }else if (indexPath.section == 3){
        return CGSizeMake(KScreenWidth/2, 150.f);
    }
    return CGSizeZero;
}
- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout referenceSizeForHeaderInSection:(NSInteger)section
{
    if (section == 2 || section == 3) {
        NSLog(@"23");
        return CGSizeMake(KScreenWidth, 50);
    }else{
        NSLog(@"0000");
        return CGSizeZero;
    }
}
- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout referenceSizeForFooterInSection:(NSInteger)section
{
    if (section == 3) {
    return CGSizeMake(KScreenWidth, 360);
    }
    return CGSizeZero;
}

//设置单元格的纵向间距
-(CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout minimumLineSpacingForSectionAtIndex:(NSInteger)section
{
    return 0;
}
- (UICollectionReusableView *)collectionView:(UICollectionView *)collectionView viewForSupplementaryElementOfKind:(NSString *)kind atIndexPath:(NSIndexPath *)indexPath;
{
    
    if ([kind isEqualToString:@"UICollectionElementKindSectionHeader"]) {
        MyHeadCollectionReusableView *headerView = [self.collectionView dequeueReusableSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:@"HeaderView" forIndexPath:indexPath];
        headerView.backgroundColor = [UIColor colorWithRed:0.91 green:0.91 blue:0.91 alpha:1];
        if (indexPath.section == 2) {
            headerView.headerLab.text = @"热门价格";
        }else if (indexPath.section == 3){
            headerView.headerLab.text = @"优质车源";
        }
        
        return headerView;

    }else{
        MyFootCollectionReusableView *footerView = [self.collectionView dequeueReusableSupplementaryViewOfKind:UICollectionElementKindSectionFooter withReuseIdentifier:@"FooterView" forIndexPath:indexPath];
        footerView.backgroundColor = [UIColor colorWithRed:0.91 green:0.91 blue:0.91 alpha:1];
        return footerView;
    }

}
//设置单元格的横向间距
-(CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout minimumInteritemSpacingForSectionAtIndex:(NSInteger)section
{
    return 0;
}
#pragma mark - collectionViewdidSelect
- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.section == 0) {
        NSLog(@"0000");
    }else if (indexPath.section == 1){
        NSLog(@"1111");
    }else if (indexPath.section == 2){
        NSLog(@"2222");
    }else if (indexPath.section == 3){
        NSLog(@"3333");
    }else if (indexPath.section == 4){
        NSLog(@"4444");
    }
    NSLog(@"%ld",indexPath.row);
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
