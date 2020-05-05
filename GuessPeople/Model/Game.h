//
//  Game.h
//  GuessPeople
//
//  Created by 罗毅豪 on 2020/5/4.
//  Copyright © 2020 罗毅豪. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "People.h"

NS_ASSUME_NONNULL_BEGIN

@interface Game : NSObject
- (BOOL) queryWithID:(int) peopleId AndName:(NSString *) peopleName;
- (NSArray *) getPeopleList;
@end

NS_ASSUME_NONNULL_END
