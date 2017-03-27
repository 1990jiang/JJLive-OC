//
//  UIColor+Extension.m
//  JJLive
//
//  Created by 蒋俊 on 17/3/27.
//  Copyright © 2017年 蒋俊. All rights reserved.
//

#import "UIColor+Extension.h"

@implementation UIColor (Extension)

//RGBA
+(UIColor *)JJ_colorWithR:(CGFloat)r green:(CGFloat)g blue:(CGFloat)b alpha:(CGFloat)alpha{
    
    return  [UIColor colorWithRed:r/255.0 green:g/255.0 blue:b/255.0 alpha:alpha];
}
//RGB
+(UIColor *)JJ_NoneAlphaWithR:(CGFloat)r green:(CGFloat)g blue:(CGFloat)b{
    
     return [UIColor colorWithRed:r/255.0 green:g/255.0 blue:b/255.0 alpha:1];
}
//RandomColor
+(UIColor *)JJ_RandomColor{
    
    return [UIColor colorWithRed:arc4random_uniform(256)/255.0 green:arc4random_uniform(256)/255.0 blue:arc4random_uniform(256)/255.0 alpha:1];
}

//十六进制颜色
+(UIColor *)JJ_HexWith:(NSString *)hex{
    
    //1.判断一下是否大于6
    if (hex.length < 6) {
        return nil;
    }
    
    //2.将字符串转为大写
    NSString *tempStr = [hex uppercaseString];
   
    
    //3.判断开头
    NSString *subStr1 = [NSString string];
    if ([tempStr hasPrefix:@"0x"] || [tempStr hasPrefix:@"##"]) {
        subStr1 = [tempStr substringFromIndex:2];
       
    }
    if ([tempStr hasPrefix:@"#"]) {
        subStr1 = [tempStr substringFromIndex:1];
        
    }
    
    //4.分别取出RGB
    // ##FF00ff --FF是红色R ,00是绿色G ,ff是蓝色B
    NSRange range = NSMakeRange(0, 2);
    NSString *rHex = [subStr1 substringWithRange:range];
    
    
    range.location = 2;
    NSString *gHex = [subStr1 substringWithRange:range];
    
    range.location = 4;
    NSString *bHex = [subStr1 substringWithRange:range];
    
    
    //5.将十六进制转成数字
    UInt32 r = 0;
    UInt32 g = 0;
    UInt32 b = 0;
    
    NSScanner *scanner1 = [NSScanner scannerWithString:rHex];
    NSScanner *scanner2 = [NSScanner scannerWithString:gHex];
    NSScanner *scanner3 = [NSScanner scannerWithString:bHex];

     [scanner1 scanHexInt:&r];
     [scanner2 scanHexInt:&g];
     [scanner3 scanHexInt:&b];
  
    return [UIColor colorWithRed:r/255.0 green:g/255.0 blue:b/255.0 alpha:1];
    
}











@end
