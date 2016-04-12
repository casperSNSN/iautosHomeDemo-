//
//  Common.h
//  MyYhouseApp
//
//  Created by 孙宁 on 16/3/31.
//  Copyright © 2016年 孙宁. All rights reserved.
//

#ifndef Common_h
#define Common_h
#ifdef DEBUG
#define D_NSLog(format, ...) NSLog(format, ## __VA_ARGS__)
#else
#define D_NSLog(format, ...)
#endif

#define KScreenWidth ([UIScreen mainScreen].bounds.size.width > [UIScreen mainScreen].bounds.size.height ? [UIScreen mainScreen].bounds.size.height : [UIScreen mainScreen].bounds.size.width)
#define KScreenHeight ([UIScreen mainScreen].bounds.size.width > [UIScreen mainScreen].bounds.size.height ? [UIScreen mainScreen].bounds.size.width : [UIScreen mainScreen].bounds.size.height)
#define KVideoHeight (KScreenWidth*9/16)

#define kTimeoutInterval    10.0

#define AppId @"hdtv"
#define SpId @"003_003"
// app版本号  debug用 "CFBundleVersion"  release用"CFBundleShortVersionString"
#define AppVersion [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleVersion"]                ///debug用 "CFBundleVersion"
//#define AppVersion ([[[NSBundle mainBundle] infoDictionary] objectForKey: @"CFBundleShortVersionString"])    //release用"CFBundleShortVersionString"

#define NoMoreData @"没有更多数据"

#define IS_iOS7 [[UIDevice currentDevice].systemVersion doubleValue] >= 7.0

/* --------------------------------------- 通知 NotificationName -----------------------------------------*/


////wechat
//#define WeChatAppKey    @"wxbcb43c2700c2e6b3"
//#define WeChatAppSecret @"4ca1018cf9002517b376456bd049718e"
////qq
//#define QQAppKey        @"100757437"
//#define QQAppSecret     @"4d8f9a54a50269ba97d5ba92b95a54d4"
////Sina
//#define SinaAppKey      @"1561408240"
//#define SinaAppSecret   @"267d6a505ae7131ad76dd8364f9b4d22"

#ifdef __OBJC__

/* --------------------------------------- 接口地址 -----------------------------------------*/


#endif



#endif /* Common_h */
