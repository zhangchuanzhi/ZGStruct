//
//  ViewController.m
//  ZGStruct
//
//  Created by offcn_zcz32036 on 2018/4/25.
//  Copyright © 2018年 cn. All rights reserved.
//

#import "ViewController.h"
typedef struct{
    char*name;
    char*address;
    CGFloat age;
} MyStruce;
CG_INLINE MyStruce
MyStruceMake(char *name, char *address, CGFloat age)
{
    MyStruce myStruce;
    myStruce.name = name;
    myStruce.address = address;
    myStruce.age = age;
    return myStruce;
}
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    MyStruce meStruce={"name","address",12};
    NSString *name=[NSString stringWithFormat:@"%s",meStruce.name];
    NSLog(@"%s %@",meStruce.name,name);
    MyStruce struce=MyStruceMake("name", "address", 123);
//    结构体转换成对象
    NSValue *value=[NSValue valueWithBytes:&struce objCType:@encode(MyStruce)];
    NSMutableArray *array=[NSMutableArray arrayWithObject:value];
    MyStruce struceBack;
    [array[0] getValue:&struceBack];
    NSLog(@"struceBack.name=%s",struceBack.name);



    NSString *strContent=@"alfklakf";
    const char*charContent=[strContent cStringUsingEncoding:NSASCIIStringEncoding];
    const char*chars=[strContent cStringUsingEncoding:NSASCIIStringEncoding];
    NSLog(@"%s",charContent);

    strContent = [[NSString alloc] initWithCString:charContent encoding:NSASCIIStringEncoding];

    NSString *string =[[NSString alloc] initWithCString:chars encoding:NSASCIIStringEncoding];

    NSLog(@"%@",string);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];

}


@end
