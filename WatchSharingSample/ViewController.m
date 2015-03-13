//
//  ViewController.m
//  WatchSharingSample
//
//  Created by Yusuke Ohashi on 3/13/15.
//  Copyright (c) 2015 Yusuke Ohashi. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)sendToWatch:(id)sender
{
    // Create and share access to an NSUserDefaults object
    NSUserDefaults *mySharedDefaults = [[NSUserDefaults alloc] initWithSuiteName: @"group.me.junkpiano.ios.GroupSample"];
    // Use the shared user defaults object to update the user's account
    [mySharedDefaults setObject:@"name" forKey:@"name"];
    [mySharedDefaults synchronize];
}
@end
