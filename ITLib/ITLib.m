//
//  ITLib.m
//  ITLib
//
//  Created by lwx on 16/6/23.
//  Copyright © 2016年 lwx. All rights reserved.
//

#import "ITLib.h"

@implementation ITLib

- (UIImage *)getImageFormLib {
    
    NSString *imgPath = [[[NSBundle mainBundle] pathForResource:@"img" ofType:@"bundle"] stringByAppendingPathComponent:@"liangjingru.jpg"];
    
    return [UIImage imageWithContentsOfFile:imgPath];
    
}






@end
