//
//  SimpleGameAppDelegate.m
//  SimpleGame
//
//  Created by masbog on 5/5/11.
//  Copyright 2011 masbog inc. All rights reserved.
//

#import "SimpleGameAppDelegate.h"

@implementation SimpleGameAppDelegate
@synthesize window;

@synthesize p1Name, p1Attack, p1Stat, p1ArrayController;
@synthesize  p2Name, p2Attack, p2Stat;
- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
	NSLog(@"saya sudah sampai");
	NSMutableArray *array = [[NSMutableArray alloc] init];
	[array addObject:@"red"];
	[array addObject:@"blue"];
	[array addObject:@"green"];
	NSLog(@"%@", [array objectAtIndex:1]);
	[p1ArrayController addObject:[NSMutableDictionary dictionaryWithObjectsAndKeys:[array objectAtIndex:1], @"p1StatType", @"biru", @"p1StatValue", nil]];
	[p1Stat reloadData];
	[array release];
}

@end
