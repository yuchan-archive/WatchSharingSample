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
    [self.textBox resignFirstResponder];
    
    if ([self.textBox.text length] == 0) {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"error" message:@"input some text" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
        [alert show];
    }
    // Create and share access to an NSUserDefaults object
    NSUserDefaults *mySharedDefaults = [[NSUserDefaults alloc] initWithSuiteName: @"group.me.junkpiano.ios.GroupSample"];
    // Use the shared user defaults object to update the user's account
    [mySharedDefaults setObject:self.textBox.text forKey:@"name"];
    [mySharedDefaults synchronize];
    
    NSFileManager* fileManager = [NSFileManager defaultManager];
    NSURL* storeUrl = [fileManager containerURLForSecurityApplicationGroupIdentifier:@"group.me.junkpiano.ios.GroupSample"];
    NSLog(@"%@", storeUrl.absoluteString);
}
@end
