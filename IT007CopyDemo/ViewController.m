//
//  ViewController.m
//  IT007CopyDemo
//
//  Created by lwx on 16/6/23.
//  Copyright © 2016年 lwx. All rights reserved.
//

#import "ViewController.h"
#import "People.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    //引用计数：为了让使用者知道，当前对象有多少个拥有者
    
    //1.非容器类不可变对象
//    [self testNSString];
    
    //2.非容器类可变对象
//    [self testNSMutableString];
    
    //3.容器类不可变对象
//    [self testNSArray];
    
    //4.容器类可变对象
//    [self testNSMutableArray];
    
    //5.对象
    [self testPeople];
}

#pragma mark - 对象
- (void)testPeople {
    
    People *p = [People new];
    
    p.name = @"wangmeng";
    
    p.cars = @[@"BWM",@"PC"];
    
    People *p1 = [p copy];
    People *p2 = [p mutableCopy];
    
    printf("\n其指针指向内容的内存地址%p %p %p",p,p1,p2);
    
    
    
}




#pragma mark - 非容器类不可变对象
- (void)testNSString {
    
    NSString *str       = @"liuweihao";
    NSString *strCopy   = [str copy];
    NSString *strMutableCopy = [str mutableCopy];
    
    //&：取地址符
    printf("其指针的内存地址%p %p %p",&str,&strCopy,&strMutableCopy);
    printf("\n其指针指向内容的内存地址%p %p %p",str,strCopy,strMutableCopy);
    //copy是浅拷贝，只拷贝指针，不拷贝内容
    //mutableCopy是深拷贝，即拷贝指针，也拷贝内容
    
    str         = @"huangyanyun";
    NSLog(@"改变后的内容%@ %@ %@",str,strCopy,strMutableCopy);
    printf("改变后其指针的内存地址%p %p %p",&str,&strCopy,&strMutableCopy);
    printf("\n改变后其指针指向内容的内存地址%p %p %p",str,strCopy,strMutableCopy);
    
}



#pragma mark - 非容器类可变对象
- (void)testNSMutableString {
    
    NSMutableString *str = [NSMutableString stringWithString:@"sunguangyuan"];
    
    NSMutableString *strCopy = [str copy];
    NSMutableString *strMutableCopy = [str mutableCopy];
    
    printf("其指针的内存地址%p %p %p",&str,&strCopy,&strMutableCopy);
    printf("\n其指针指向内容的内存地址%p %p %p",str,strCopy,strMutableCopy);
    
    
    [str appendString:@" + wangmeng"];
    
    NSLog(@"改变后的内容：%@ %@ %@",str,strCopy,strMutableCopy);
    
    printf("其指针的内存地址%p %p %p",&str,&strCopy,&strMutableCopy);
    printf("\n其指针指向内容的内存地址%p %p %p",str,strCopy,strMutableCopy);
    
    
    //1.非容器类可变对象的copy和mutableCopy都是深拷贝
}


#pragma mark - 容器类不可变对象
- (void)testNSArray {

    NSString *str = @"xiongmao";
    
    NSMutableString *mutableStr = [NSMutableString stringWithString:@"xiaohuangren"];
    
    NSArray *arr = @[@"adai",str,mutableStr];
    NSArray *arrCopy = [arr copy];
    NSArray *arrMutableCopy = [arr mutableCopy];
    printf("其指针的内存地址%p %p %p",&arr,&arrCopy,&arrMutableCopy);
    printf("\n其指针指向内容的内存地址%p %p %p\n",arr,arrCopy,arrMutableCopy);
    
    str = @"xiaohuangren";
    
    [mutableStr setString:@"xiongmao"];
    
    
    NSLog(@"改变内容后的值：%@ %@ %@",arr,arrCopy,arrMutableCopy);
}


#pragma mark - 容器类可变对象
- (void)testNSMutableArray {
    
    NSString *str = @"wangzhaoke";
    
    NSMutableString *mutableStr = [NSMutableString stringWithString:@"zhoukeqiang"];
    
    NSMutableArray *arr = [NSMutableArray arrayWithObjects:@"liuzhanli",str,mutableStr ,nil];
    
    NSMutableArray *arrCopy = [arr copy];
    
    NSMutableArray *arrMutableCopy = [arr mutableCopy];
    
    printf("其指针指向内容的内存地址%p %p %p\n",arr,arrCopy,arrMutableCopy);
    
    str = @"wang";
    
    arr[0] = @"zhanzhang";
    
//    [mutableStr setString:@"zhou"];
    arr[2] = @"zhou";
    
    
    [arr addObject:@"suiji"];
    
    NSLog(@"改变内容后的值：%@ %@ %@",arr,arrCopy,arrMutableCopy);
}


//总结：
//






@end





