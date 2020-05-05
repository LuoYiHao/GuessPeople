//
//  Game.m
//  GuessPeople
//
//  Created by 罗毅豪 on 2020/5/4.
//  Copyright © 2020 罗毅豪. All rights reserved.
//

#import "Game.h"

@implementation Game
{
    NSArray * _initialList;
    NSArray * _people;
}
- (instancetype)init
{
    self = [super init];
    if (self) {
        People * p1 = [[People alloc]initWithID:(1) AndName:@"mao"];
        People * p2 = [[People alloc]initWithID:(2) AndName:@"li"];
        People * p3 = [[People alloc]initWithID:(3) AndName:@"ying"];
        People * p4 = [[People alloc]initWithID:(4) AndName:@"li"];
        People * p5 = [[People alloc]initWithID:(5) AndName:@"zhou"];
        People * p6 = [[People alloc]initWithID:(6) AndName:@"zhao"];
        People * p7 = [[People alloc]initWithID:(7) AndName:@"liang"];
        People * p8 = [[People alloc]initWithID:(8) AndName:@"du"];
        NSArray * arr = [[NSArray alloc]initWithObjects:p1,p2,p3,p4,p5,p6,p7,p8,nil];
        _initialList = arr;
        arr = [self randomArr:arr];
        _people = arr;
    }
    return self;
}

- (BOOL) queryWithID:(int) peopleId AndName:(NSString *) peopleName{
    People * p = _initialList[peopleId-1];
    if([[p getPeopleName]isEqualToString:peopleName]){
        return YES;
    }
        return NO;
}

- (NSArray *) getPeopleList{
    return _people;
}

- (NSArray *) randomArr:(NSArray *)arr
{
    // 对数组乱序
    arr = [arr sortedArrayUsingComparator:^NSComparisonResult(People *p1, People *p2) {
        //生成0或1
        int seed = arc4random_uniform(2);
//        NSLog(@"%d",seed);
        if (seed) {
            return 1;
        } else {
            return -1;
        }
    }];
    return arr;
}
@end
