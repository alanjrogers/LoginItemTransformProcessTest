//
//  TSTAppDelegate.m
//  LoginItemTranformProcessTest
//
//  Created by Alan Rogers on 10/02/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "TSTAppDelegate.h"

@implementation TSTAppDelegate {
	NSStatusItem* myStatusItem;
}

@synthesize window = _window;
@synthesize menu;

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
	// Insert code here to initialize your application
	
	
    myStatusItem = [[NSStatusBar systemStatusBar] statusItemWithLength:NSVariableStatusItemLength];
    
    [myStatusItem setHighlightMode:YES];
	[myStatusItem setEnabled:YES];
    
    [myStatusItem setMenu:self.menu];
    [myStatusItem setTitle:@"Login Item"];

}

- (IBAction)showHideDockIcon:(id)sender {
	ProcessSerialNumber psn = { 0, kCurrentProcess };
	
	NSDictionary* dictionary = (__bridge_transfer NSDictionary*)ProcessInformationCopyDictionary(&psn, kProcessDictionaryIncludeAllInformationMask);
	
	if ([[dictionary objectForKey:@"LSUIElement"] boolValue]) {
		TransformProcessType(&psn, kProcessTransformToForegroundApplication);
	} else {
		TransformProcessType(&psn, kProcessTransformToUIElementApplication);
	}
}

- (IBAction)showWindow:(id)sender {
	[self.window makeKeyAndOrderFront:sender];
}

@end
