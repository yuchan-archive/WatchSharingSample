//
//  GlanceController.m
//  WatchSharingSample
//
//  Created by Yusuke Ohashi on 3/19/15.
//  Copyright (c) 2015 Yusuke Ohashi. All rights reserved.
//

#import "GlanceController.h"

@interface GlanceController()

@end


@implementation GlanceController

- (void)awakeWithContext:(id)context {
    [super awakeWithContext:context];
    
    // Configure interface objects here.
    [self updateUserActivity:@"me.junkpiano.ios.glance1" userInfo:@{@"message":@"test glance."} webpageURL:nil];
}

- (void)willActivate {
    // This method is called when watch view controller is about to be visible to user
    [super willActivate];
}

- (void)didDeactivate {
    // This method is called when watch view controller is no longer visible
    [super didDeactivate];
}

@end



