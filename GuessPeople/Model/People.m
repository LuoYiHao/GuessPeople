//
//  People.m
//  GuessPeople
//
//  Created by 罗毅豪 on 2020/5/4.
//  Copyright © 2020 罗毅豪. All rights reserved.
//

#import "People.h"

@implementation People
{
    int _peopleId;
    NSString * _name;
}

- (id) initWithID:(int) peopleId AndName:(NSString *) name{
    _peopleId = peopleId;
    _name = name;
    return self;
}

- (int) getPeopleId{
    return _peopleId;
}

- (NSString *) getPeopleName{
    return _name;
}
@end
