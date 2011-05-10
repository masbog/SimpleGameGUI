//
//  SimpleGameAppDelegate.m
//  SimpleGame
//
//  Created by masbog on 5/5/11.
//  Copyright 2011 masbog inc. All rights reserved.
//

#import "SimpleGameAppDelegate.h"

@implementation SimpleGameAppDelegate
@synthesize window, stringType;

@synthesize p1Name, p1Attack, p1Stat, p1ArrayController, p1WeaponStatController, p1WeaponStat, p1ArmorStatController, p1ArmorStat;
@synthesize p2Name, p2Attack, p2Stat, p2ArrayController, p2WeaponStatController, p2WeaponStat, p2ArmorStatController, p2ArmorStat;

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
	p1 = [[Player alloc] initWithID:@"P1" name:@"Bogie" health:100 charType:Penyerang agib:55];
	p1Weapon = [[Weapon alloc] initWithID:@"P1" wName:@"Pistol" type:@"Gun" apparel:@"Hand" dmg:60 atk:30 def:10 agi:15];
	p1HeadArmor = [[Armor alloc] initWithID:@"H1" name:@"Helm SNI" type:@"Helmet" apparel:ArmorHead atk:10 def:20 agi:30];
	[p1 setWeapon: p1Weapon];
	[p1 setIsiArmor:p1HeadArmor];
	[self p1StatTableViewAddData];
	[self p1WeaponStatTableViewData];
	
	p2 = [[Player alloc] initWithID:@"P2" name:@"Tedi" health:100 charType:Penyerang agib:50];
	p2Weapon = [[Weapon alloc] initWithID:@"P2" wName:@"Pistol" type:@"Gun" apparel:@"Hand" dmg:60 atk:30 def:10 agi:15];
	[p2 setWeapon:p2Weapon];
	[self p2StatTableViewAddData];
	[self p2WeaponStatTableViewData];
	
	[p1 release];
	[p2 release];
	[p1Weapon release];
}

-(void)characterTypeString:(int)cNumber
{
	switch (cNumber) {
		case 0:
			stringType = [NSString stringWithFormat:@"Penyerang"];
		break;
		case 1:
			stringType = [NSString stringWithFormat:@"Penyerang"];
		break;
		default:
			break;
	}
}

-(void)p1StatTableViewAddData
{
	[self characterTypeString:[p1 charType]];
	[p1Name setTitleWithMnemonic:[p1 name]]; 
	[p1ArrayController addObject:[NSMutableDictionary dictionaryWithObjectsAndKeys:@"Name", @"p1StatType", [p1 name], @"p1StatValue", nil]];
	[p1ArrayController addObject:[NSMutableDictionary dictionaryWithObjectsAndKeys:@"Healty", @"p1StatType", [NSString stringWithFormat:@"%d%",[p1 health]], @"p1StatValue", nil]];
	[p1ArrayController addObject:[NSMutableDictionary dictionaryWithObjectsAndKeys:@"Type", @"p1StatType", stringType, @"p1StatValue", nil]];
	[p1ArrayController addObject:[NSMutableDictionary dictionaryWithObjectsAndKeys:@"Agibility", @"p1StatType", [NSString stringWithFormat:@"%d%",[p1 agib]], @"p1StatValue", nil]];
	[p1Stat reloadData];
}

-(void)p2StatTableViewAddData
{
	[self characterTypeString:[p2 charType]];
	[p2Name setTitleWithMnemonic:[p2 name]]; 
	[p2ArrayController addObject:[NSMutableDictionary dictionaryWithObjectsAndKeys:@"Name", @"p2StatType", [p2 name], @"p2StatValue", nil]];
	[p2ArrayController addObject:[NSMutableDictionary dictionaryWithObjectsAndKeys:@"Healty", @"p2StatType", [NSString stringWithFormat:@"%d%",[p2 health]], @"p2StatValue", nil]];
	[p2ArrayController addObject:[NSMutableDictionary dictionaryWithObjectsAndKeys:@"Type", @"p2StatType", stringType, @"p2StatValue", nil]];
	[p2ArrayController addObject:[NSMutableDictionary dictionaryWithObjectsAndKeys:@"Agibility", @"p2StatType", [NSString stringWithFormat:@"%d%",[p2 agib]], @"p2StatValue", nil]];
	[p2Stat reloadData];
}

-(void)p1WeaponStatTableViewData
{
	[p1WeaponStatController addObject:[NSMutableDictionary dictionaryWithObjectsAndKeys:@"Name", @"p1WeaponTypeStat", [p1Weapon wName], @"p1WeaponValueStat", nil]];
	[p1WeaponStatController addObject:[NSMutableDictionary dictionaryWithObjectsAndKeys:@"Type", @"p1WeaponTypeStat", [p1Weapon type], @"p1WeaponValueStat", nil]];
	[p1WeaponStatController addObject:[NSMutableDictionary dictionaryWithObjectsAndKeys:@"Apparel", @"p1WeaponTypeStat", [p1Weapon apparel], @"p1WeaponValueStat", nil]];
	[p1WeaponStatController addObject:[NSMutableDictionary dictionaryWithObjectsAndKeys:@"DMG", @"p1WeaponTypeStat", [NSString stringWithFormat:@"%d%",[p1Weapon dmg]], @"p1WeaponValueStat", nil]];
	[p1WeaponStatController addObject:[NSMutableDictionary dictionaryWithObjectsAndKeys:@"DEF", @"p1WeaponTypeStat", [NSString stringWithFormat:@"%d%",[p1Weapon def]], @"p1WeaponValueStat", nil]];
	[p1WeaponStatController addObject:[NSMutableDictionary dictionaryWithObjectsAndKeys:@"AGI", @"p1WeaponTypeStat", [NSString stringWithFormat:@"%d%",[p1Weapon agi]], @"p1WeaponValueStat", nil]];
	[p1WeaponStat reloadData];
}

-(void)p2WeaponStatTableViewData
{
	[p2WeaponStatController addObject:[NSMutableDictionary dictionaryWithObjectsAndKeys:@"Name", @"p2WeaponTypeStat", [p2Weapon wName], @"p2WeaponValueStat", nil]];
	[p2WeaponStatController addObject:[NSMutableDictionary dictionaryWithObjectsAndKeys:@"Type", @"p2WeaponTypeStat", [p2Weapon type], @"p2WeaponValueStat", nil]];
	[p2WeaponStatController addObject:[NSMutableDictionary dictionaryWithObjectsAndKeys:@"Apparel", @"p2WeaponTypeStat", [p2Weapon apparel], @"p2WeaponValueStat", nil]];
	[p2WeaponStatController addObject:[NSMutableDictionary dictionaryWithObjectsAndKeys:@"DMG", @"p2WeaponTypeStat", [NSString stringWithFormat:@"%d%",[p2Weapon dmg]], @"p2WeaponValueStat", nil]];
	[p2WeaponStatController addObject:[NSMutableDictionary dictionaryWithObjectsAndKeys:@"DEF", @"p2WeaponTypeStat", [NSString stringWithFormat:@"%d%",[p2Weapon def]], @"p2WeaponValueStat", nil]];
	[p2WeaponStatController addObject:[NSMutableDictionary dictionaryWithObjectsAndKeys:@"AGI", @"p2WeaponTypeStat", [NSString stringWithFormat:@"%d%",[p2Weapon agi]], @"p2WeaponValueStat", nil]];
	[p2WeaponStat reloadData];
}
@end
