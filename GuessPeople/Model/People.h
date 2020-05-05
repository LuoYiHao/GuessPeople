//
//  People.h
//  GuessPeople
//
//  Created by 罗毅豪 on 2020/5/4.
//  Copyright © 2020 罗毅豪. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface People : NSObject

- (id) initWithID:(int) peopleId AndName:(NSString *) name;
- (int) getPeopleId;
- (NSString *) getPeopleName;
@end

NS_ASSUME_NONNULL_END
