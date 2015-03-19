//
//  InterfaceController.m
//  WatchSharingSample WatchKit Extension
//
//  Created by Yusuke Ohashi on 3/13/15.
//  Copyright (c) 2015 Yusuke Ohashi. All rights reserved.
//

#import "InterfaceController.h"


@interface InterfaceController()

@end


@implementation InterfaceController

- (void)awakeWithContext:(id)context {
    [super awakeWithContext:context];

    // Configure interface objects here.
}

- (void)willActivate {
    // This method is called when watch view controller is about to be visible to user
    [super willActivate];
    NSFileManager* fileManager = [NSFileManager defaultManager];
    NSURL* storeUrl = [fileManager containerURLForSecurityApplicationGroupIdentifier:@"group.me.junkpiano.ios.GroupSample"];
    NSLog(@"%@", storeUrl.absoluteString);
    [self updateView:nil];
}

- (void)didDeactivate {
    // This method is called when watch view controller is no longer visible
    [super didDeactivate];
}

- (void)handleUserActivity:(NSDictionary *)userInfo
{
    if (userInfo) {
        [self pushControllerWithName:@"NextInterfaceController" context:nil];
    }
}

- (void)handleActionWithIdentifier:(NSString *)identifier forLocalNotification:(UILocalNotification *)localNotification
{
    
}

- (IBAction)updateView:(id)sender
{
    NSUserDefaults *mySharedDefaults = [[NSUserDefaults alloc] initWithSuiteName: @"group.me.junkpiano.ios.GroupSample"];
    // Use the shared user defaults object to update the user's account
    NSString *str = [mySharedDefaults stringForKey:@"name"];
    self.textLabel.text = str;
}

- (IBAction)hiIphone:(id)sender
{
    [[self class] openParentApplication:@{@"message":@"Hi iPhone, from Watch."} reply:^(NSDictionary *replyInfo, NSError *error) {
        if (replyInfo) {
            NSLog(@"Welcome back");
        }else{
            NSLog(@"failed.");
        }
    }];
}
@end



