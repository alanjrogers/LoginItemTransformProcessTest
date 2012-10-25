//
//  TSTAppDelegate.h
//  LoginItemTranformProcessTest
//
//  Created by Alan Rogers on 10/02/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface TSTAppDelegate : NSObject <NSApplicationDelegate>

@property (assign) IBOutlet NSWindow *window;
@property (weak) IBOutlet NSMenu *menu;

- (IBAction)showWindow:(id)sender;
- (IBAction)showHideDockIcon:(id)sender;


@end
