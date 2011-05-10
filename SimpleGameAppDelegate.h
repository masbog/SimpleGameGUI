//
//  SimpleGameAppDelegate.h
//  SimpleGame
//
//  Created by masbog on 5/5/11.
//  Copyright 2011 masbog inc. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "p1Controller.h"
#import "p2Controller.h"


@interface SimpleGameAppDelegate : NSObject <NSApplicationDelegate> {
	
	Player *p1, *p2;
	
	Weapon *p1Weapon, *p2Weapon;
	
	Armor *p1HeadArmor, *p1BodyArmor, *p1FootArmor;
	Armor *p2HeadArmor, *p2BodyArmor, *p2FootArmor;
	
    NSWindow *window;
	NSString *stringType;
	
	NSTextField *p1Name;
	NSButton *p1Attack;
	NSTableView *p1Stat;
	NSTableView *p1WeaponStat;
	NSArrayController *p1ArrayController;
	NSArrayController *p1WeaponStatController;
	NSArrayController *p1ArmorStatController;
	
	
	NSButton *p2Attack;
	NSTextField *p2Name;
	NSTableView *p2Stat;
	NSTableView *p2WeaponStat;
	NSArrayController *p2ArrayController;
	NSArrayController *p2WeaponStatController;
	NSArrayController *p2ArmorStatController;
}

@property (assign) IBOutlet NSWindow *window;
@property (nonatomic, retain) IBOutlet NSTextField *p1Name;
@property (nonatomic, retain) IBOutlet NSButton *p1Attack;
@property (nonatomic, retain) IBOutlet NSTableView *p1Stat;
@property (nonatomic, retain) IBOutlet NSTableView *p1WeaponStat;
@property (nonatomic, retain) IBOutlet NSTableView *p1ArmorStat;
@property (nonatomic, retain) IBOutlet NSArrayController *p1ArrayController;
@property (nonatomic, retain) IBOutlet NSArrayController *p1WeaponStatController;
@property (nonatomic, retain) IBOutlet NSArrayController *p1ArmorStatController;

@property (nonatomic, retain) IBOutlet NSTextField *p2Name;
@property (nonatomic, retain) IBOutlet NSButton *p2Attack;
@property (nonatomic, retain) IBOutlet NSTableView *p2Stat;
@property (nonatomic, retain) IBOutlet NSTableView *p2WeaponStat;
@property (nonatomic, retain) IBOutlet NSTableView *p2ArmorStat;
@property (nonatomic, retain) IBOutlet NSArrayController *p2ArrayController;
@property (nonatomic, retain) IBOutlet NSArrayController *p2WeaponStatController;
@property (nonatomic, retain) IBOutlet NSArrayController *p2ArmorStatController;

@property (nonatomic, retain) NSString *stringType;


-(void)characterTypeString:(int)cNumber;
-(void)p1StatTableViewAddData;
-(void)p1WeaponStatTableViewData;

-(void)p2StatTableViewAddData;
-(void)p2WeaponStatTableViewData;

@end
