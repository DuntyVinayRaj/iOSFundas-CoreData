//
//  User.h
//  CoreDataMobile
//
//  Created by Vinay Raj on 27/08/14.
//  Copyright (c) 2014 com.apps. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface User : NSManagedObject

@property (nonatomic, retain) NSNumber * salary;
@property (nonatomic, retain) NSString * userid;
@property (nonatomic, retain) NSString * username;

@end
