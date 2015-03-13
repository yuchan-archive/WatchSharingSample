//
//  InterfaceController.h
//  WatchSharingSample WatchKit Extension
//
//  Created by Yusuke Ohashi on 3/13/15.
//  Copyright (c) 2015 Yusuke Ohashi. All rights reserved.
//

#import <WatchKit/WatchKit.h>
#import <Foundation/Foundation.h>

@interface InterfaceController : WKInterfaceController
@property (weak, nonatomic) IBOutlet WKInterfaceLabel *textLabel;
@property (weak, nonatomic) IBOutlet WKInterfaceButton *updateButton;

@end
