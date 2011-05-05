//
//  SimpleGameAppDelegate.h
//  SimpleGame
//
//  Created by masbog on 5/5/11.
//  Copyright 2011 masbog inc. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface SimpleGameAppDelegate : NSObject <NSApplicationDelegate> {
    NSWindow *window;
	NSTextField *p1Name;
	NSTextField *p2Name;
	
	NSButton *p1Attack;
	NSButton *p2Attack;
	
	NSTableView *p1Stat;
	NSTableView *p2Stat;
	
	NSArrayController *p1ArrayController;
}

@property (assign) IBOutlet NSWindow *window;
@property (nonatomic, retain) IBOutlet NSTextField *p1Name;
@property (nonatomic, retain) IBOutlet NSButton *p1Attack;
@property (nonatomic, retain) IBOutlet NSTableView *p1Stat;
@property (nonatomic, retain) IBOutlet NSArrayController *p1ArrayController;

@property (nonatomic, retain) IBOutlet NSTextField *p2Name;
@property (nonatomic, retain) IBOutlet NSButton *p2Attack;
@property (nonatomic, retain) IBOutlet NSTableView *p2Stat;

@end
