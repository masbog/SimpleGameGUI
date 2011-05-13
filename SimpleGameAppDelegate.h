//
//  SimpleGameAppDelegate.h
//  SimpleGame
//
//  Created by masbog on 5/5/11.
//  Copyright 2011 masbog inc. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "Entity.h"
#import "Equipment.h"
#import "Player.h"
#import "Armor.h"
#import "Weapon.h"


@interface SimpleGameAppDelegate : NSObject <NSApplicationDelegate>{
	
	Player *p1, *p2;
	
	Weapon *p1Weapon, *p2Weapon;
	
	Armor *p1HeadArmor, *p1BodyArmor, *p1FootArmor;
	Armor *p2HeadArmor, *p2BodyArmor, *p2FootArmor;
	
    NSWindow *window;
	NSTextField *textLog;
	NSMutableArray *isiLog;
	NSString *stringType;
	
	NSTextField *p1Name;
	NSTableView *p1Stat;
	NSTableView *p1WeaponStat;
	NSOutlineView *p1ArmorStat;
	NSArrayController *p1ArrayController;
	NSArrayController *p1WeaponStatController;
	NSTreeController *p1ArmorStatController;
	NSArray *p1ArmorArray;
	
	
	NSTextField *p2Name;
	NSTableView *p2Stat;
	NSTableView *p2WeaponStat;
	NSOutlineView *p2ArmorStat;
	NSArrayController *p2ArrayController;
	NSArrayController *p2WeaponStatController;
	NSTreeController *p2ArmorStatController;
	
	NSArray *apparelArmor;
	NSArray *apparelArmorStat;
	NSMutableArray *apparelArmorHeadValue;
	NSMutableArray *apparelArmorBodyValue;
	NSMutableArray *apparelArmorFootValue;
	
}

@property (assign) IBOutlet NSWindow *window;
@property (nonatomic,retain) IBOutlet NSTextField *textLog;
@property (nonatomic,retain) NSMutableArray *isiLog;

@property (nonatomic,retain) NSArray *apparelArmor;
@property (nonatomic,retain) NSArray *apparelArmorStat;
@property (nonatomic,retain) NSMutableArray *apparelArmorHeadValue;
@property (nonatomic,retain) NSMutableArray *apparelArmorBodyValue;
@property (nonatomic,retain) NSMutableArray *apparelArmorFootValue;

@property (nonatomic, retain) IBOutlet NSTextField *p1Name;
@property (nonatomic, retain) IBOutlet NSButton *p1Attack;
@property (nonatomic, retain) IBOutlet NSTableView *p1Stat;
@property (nonatomic, retain) IBOutlet NSTableView *p1WeaponStat;
@property (nonatomic, retain) IBOutlet NSOutlineView *p1ArmorStat;
@property (nonatomic, retain) IBOutlet NSArrayController *p1ArrayController;
@property (nonatomic, retain) IBOutlet NSArrayController *p1WeaponStatController;
@property (nonatomic, retain) IBOutlet NSTreeController *p1ArmorStatController;

@property (nonatomic, retain) IBOutlet NSTextField *p2Name;
@property (nonatomic, retain) IBOutlet NSButton *p2Attack;
@property (nonatomic, retain) IBOutlet NSTableView *p2Stat;
@property (nonatomic, retain) IBOutlet NSTableView *p2WeaponStat;
@property (nonatomic, retain) IBOutlet NSOutlineView *p2ArmorStat;
@property (nonatomic, retain) IBOutlet NSArrayController *p2ArrayController;
@property (nonatomic, retain) IBOutlet NSArrayController *p2WeaponStatController;
@property (nonatomic, retain) IBOutlet NSTreeController *p2ArmorStatController;

@property (nonatomic, retain) NSString *stringType;


-(void)characterTypeString:(int)cNumber;
-(void)p1StatTableViewAddData;
-(void)p1WeaponStatTableViewData;

-(void)p2StatTableViewAddData;
-(void)p2WeaponStatTableViewData;

-(void)setArray:(Player *)pemilik;

-(void)setHeadArrayValue:(Armor *)headValue;
-(void)setBodyArrayValue:(Armor *)bodyValue;
-(void)setFootArrayValue:(Armor *)footValue;

-(IBAction)p1Serang:(id)sender;
-(IBAction)p2Serang:(id)sender;

-(void)melepas;

-(void)setLog:(NSString *)logger;

@end
