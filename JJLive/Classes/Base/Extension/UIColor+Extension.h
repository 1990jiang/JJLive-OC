//
//  UIColor+Extension.h
//  JJLive
//
//  Created by 蒋俊 on 17/3/27.
//  Copyright © 2017年 蒋俊. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (Extension)

/**
 返回指定RGB值颜色

 @param r 红色
 @param g 绿色
 @param b 蓝色
 @param alpha 透明度
 @return 颜色
 */
+(UIColor *)JJ_colorWithR:(CGFloat)r green:(CGFloat)g blue:(CGFloat)b alpha:(CGFloat)alpha;


/**
 默认透明度颜色
*/
+(UIColor *)JJ_NoneAlphaWithR:(CGFloat)r green:(CGFloat)g blue:(CGFloat)b;

/**
 随机色
 */
+(UIColor *)JJ_RandomColor;


/**
 十六进制颜色

 @param hex 十六进制数

 */
+(UIColor *)JJ_HexWith:(NSString *)hex;









@end
