//
//  CDManager.h
//  CoreDataMobile
//
//  Created by Vinay Raj on 27/08/14.
//  Copyright (c) 2014 com.apps. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@interface CDManager : NSObject

@property (readonly, strong, nonatomic) NSManagedObjectContext *managedObjectContext;
@property (readonly, strong, nonatomic) NSManagedObjectModel *managedObjectModel;
@property (readonly, strong, nonatomic) NSPersistentStoreCoordinator *persistentStoreCoordinator;

+ (CDManager *)sharedClient;

-(NSArray *)getUserDataFromDB;
-(void)persistUserDetailsWithName : (NSString*)name
                           withId : (NSString*)eid
                       withSalary : (NSNumber *)salary;

-(void)deleteUserEntity;
-(void)updateUserForKey:(NSString*)key forValue:(NSNumber*)value;

@end
