//
//  People.h
//  IT007CopyDemo
//
//  Created by lwx on 16/6/23.
//  Copyright © 2016年 lwx. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface People : NSObject<NSCopying>

@property (nonatomic ,copy) NSString *name;

@property (nonatomic, strong) NSArray *cars;




@end
