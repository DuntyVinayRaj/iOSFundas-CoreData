//
//  ViewController.m
//  CoreDataMobile
//
//  Created by Vinay Raj on 27/08/14.
//  Copyright (c) 2014 com.apps. All rights reserved.
//

#import "ViewController.h"
#import "CDManager.h"

@interface ViewController ()



@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)readData:(id)sender {
    
    NSLog(@"Log : REsults fetched are - %@", [[CDManager sharedClient] getUserDataFromDB]);
}

- (IBAction)insertClicked:(id)sender {
    
    [[CDManager sharedClient] persistUserDetailsWithName:@"Rohit" withId:@"abdc1" withSalary:@(50000)];
}


- (IBAction)updateRecordClicked:(id)sender {
    
    [[CDManager sharedClient] updateUserForKey:@"salary" forValue:@(60000)];
}


- (IBAction)deleteRecordClicked:(id)sender {
    
    [[CDManager sharedClient] deleteUserEntity];
    
}
@end
