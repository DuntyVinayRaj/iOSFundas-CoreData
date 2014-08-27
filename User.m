//
//  User.m
//  CoreDataMobile
//
//  Created by Vinay Raj on 27/08/14.
//  Copyright (c) 2014 com.apps. All rights reserved.
//

#import "User.h"


@implementation User

@dynamic salary;
@dynamic userid;
@dynamic username;

-(NSString*)description
{
    
    return [NSString stringWithFormat:@"name  : %@, salary : %@, id : %@", self.username, self.salary, self.userid];
}

@end
