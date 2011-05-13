//
//  SimpleGameAppDelegate.m
//  SimpleGame
//
//  Created by masbog on 5/5/11.
//  Copyright 2011 masbog inc. All rights reserved.
//

#import "SimpleGameAppDelegate.h"
#import "armorTreeController.h"

@implementation SimpleGameAppDelegate
@synthesize window, stringType, textLog, isiLog;

@synthesize apparelArmor, apparelArmorStat, apparelArmorHeadValue, apparelArmorBodyValue, apparelArmorFootValue; 

@synthesize p1Name, p1Attack, p1Stat, p1ArrayController, p1WeaponStatController, p1WeaponStat, p1ArmorStatController, p1ArmorStat;
@synthesize p2Name, p2Attack, p2Stat, p2ArrayController, p2WeaponStatController, p2WeaponStat, p2ArmorStatController, p2ArmorStat;

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
	isiLog = [[NSMutableArray alloc] init];
	apparelArmor = [[NSArray alloc] initWithObjects:@"Head Armor", @"Body Armor", @"Foot Armor",nil];
	apparelArmorStat = [[NSArray alloc] initWithObjects:@"Name", @"Type", @"Apparel", @"ATK", @"DEF", @"AGI",nil];
	
	p1 = [[Player alloc] initWithID:@"P1" name:@"Bogie" health:100 charType:Penyerang agib:55];
	p1Weapon = [[Weapon alloc] initWithID:@"P1" wName:@"Pistol" type:@"Gun" apparel:@"Hand" dmg:50 atk:30 def:10 agi:15];
	p1HeadArmor = [[Armor alloc] initWithID:@"H1" name:@"Helm Arai" type:@"Helmet" apparel:ArmorHead atk:10 def:40 agi:30];
	p1BodyArmor = [[Armor alloc] initWithID:@"B1" name:@"Jaket kulit" type:@"Vest" apparel:ArmorBody atk:5 def:15 agi:40];
	p1FootArmor = [[Armor alloc] initWithID:@"F1" name:@"APBoot" type:@"Shoes" apparel:ArmorFoot atk:20 def:20 agi:10];
	[p1 setWeapon: p1Weapon];
	[p1 setIsiArmor:p1HeadArmor];
	[p1 setIsiArmor:p1BodyArmor];
	[p1 setIsiArmor:p1FootArmor];
	[self setHeadArrayValue:p1HeadArmor];
	[self setBodyArrayValue:p1BodyArmor];
	[self setFootArrayValue:p1FootArmor];
	[self setArray:p1];
	[self p1StatTableViewAddData];
	[self p1WeaponStatTableViewData];
	
	p2 = [[Player alloc] initWithID:@"P2" name:@"Tedi" health:100 charType:Penyerang agib:50];
	p2Weapon = [[Weapon alloc] initWithID:@"P2" wName:@"The Eagle" type:@"Gun" apparel:@"Hand" dmg:60 atk:30 def:10 agi:15];
	p2HeadArmor = [[Armor alloc] initWithID:@"H2" name:@"Helm SNI" type:@"Helmet" apparel:ArmorHead atk:10 def:20 agi:30];
	p2BodyArmor = [[Armor alloc] initWithID:@"B2" name:@"Jumper" type:@"Vest" apparel:ArmorBody atk:5 def:10 agi:40];
	p2FootArmor = [[Armor alloc] initWithID:@"F2" name:@"Dragon Fly" type:@"Shoes" apparel:ArmorFoot atk:5 def:20 agi:30];
	[p2 setWeapon:p2Weapon];
	[p2 setIsiArmor:p2HeadArmor];
	[p2 setIsiArmor:p2BodyArmor];
	[p2 setIsiArmor:p2FootArmor];
	[self setHeadArrayValue:p2HeadArmor];
	[self setBodyArrayValue:p2BodyArmor];
	[self setFootArrayValue:p2FootArmor];
	[self setArray:p2];
	[self p2StatTableViewAddData];
	[self p2WeaponStatTableViewData];

	/*
	[p1 release];
	[p1Weapon release];
	[p1HeadArmor release];
	
	[p2 release];
	[p2Weapon release];
	[p2HeadArmor release];
	*/
	//[textLog setStringValue:@"1 \n2 \n3"];
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

-(void)setArray:(Player *)pemilik
{
	int i,j;
	armorTreeController *aTC = [armorTreeController armorTreeControllerFromName:@"Root" value:@"of the tree"];
	NSMutableArray *roots = [NSMutableArray array];
	for(i=0;i<3;i++)
	{
		aTC = [armorTreeController armorTreeControllerFromName:[apparelArmor objectAtIndex:i] value:@""];
		NSTreeNode *inode = [NSTreeNode treeNodeWithRepresentedObject:aTC];
		for(j=0;j<6;j++)
		{
			if (i==0) {
				aTC = [armorTreeController armorTreeControllerFromName:[apparelArmorStat objectAtIndex:j] value:[apparelArmorHeadValue objectAtIndex:j]];
			}else if (i==1) {
				aTC = [armorTreeController armorTreeControllerFromName:[apparelArmorStat objectAtIndex:j] value:[apparelArmorBodyValue objectAtIndex:j]];
			}else if (i==2) {
				aTC = [armorTreeController armorTreeControllerFromName:[apparelArmorStat objectAtIndex:j] value:[apparelArmorFootValue objectAtIndex:j]];
			}
			NSTreeNode *jnode = [NSTreeNode treeNodeWithRepresentedObject:aTC];
			[[inode mutableChildNodes] addObject:jnode];
		}
		[roots addObject:inode];
	}
	if ([pemilik ID] == @"P1") {
		[p1ArmorStatController setContent:roots];
		[p1ArmorStat reloadData];
	}else if ([pemilik ID] == @"P2") {
		[p2ArmorStatController setContent:roots];
		[p2ArmorStat reloadData];
	}
	[apparelArmorHeadValue release];
	[apparelArmorBodyValue release];
	[apparelArmorFootValue release];
}

-(void)setHeadArrayValue:(Armor *)headValue
{
	apparelArmorHeadValue = [[NSMutableArray alloc] init];
	[apparelArmorHeadValue addObject:[headValue name]];
	[apparelArmorHeadValue addObject:[headValue type]];
	[apparelArmorHeadValue addObject:[NSString stringWithFormat:@"%d%",[headValue apparel]]];
	[apparelArmorHeadValue addObject:[NSString stringWithFormat:@"%d%",[headValue atk]]];
	[apparelArmorHeadValue addObject:[NSString stringWithFormat:@"%d%",[headValue def]]];
	[apparelArmorHeadValue addObject:[NSString stringWithFormat:@"%d%",[headValue agi]]];
}
-(void)setBodyArrayValue:(Armor *)bodyValue
{
	apparelArmorBodyValue = [[NSMutableArray alloc] init];
	[apparelArmorBodyValue addObject:[bodyValue name]];
	[apparelArmorBodyValue addObject:[bodyValue type]];
	[apparelArmorBodyValue addObject:[NSString stringWithFormat:@"%d%",[bodyValue apparel]]];
	[apparelArmorBodyValue addObject:[NSString stringWithFormat:@"%d%",[bodyValue atk]]];
	[apparelArmorBodyValue addObject:[NSString stringWithFormat:@"%d%",[bodyValue def]]];
	[apparelArmorBodyValue addObject:[NSString stringWithFormat:@"%d%",[bodyValue agi]]];
}
-(void)setFootArrayValue:(Armor *)footValue
{
	apparelArmorFootValue = [[NSMutableArray alloc] init];
	[apparelArmorFootValue addObject:[footValue name]];
	[apparelArmorFootValue addObject:[footValue type]];
	[apparelArmorFootValue addObject:[NSString stringWithFormat:@"%d%",[footValue apparel]]];
	[apparelArmorFootValue addObject:[NSString stringWithFormat:@"%d%",[footValue atk]]];
	[apparelArmorFootValue addObject:[NSString stringWithFormat:@"%d%",[footValue def]]];
	[apparelArmorFootValue addObject:[NSString stringWithFormat:@"%d%",[footValue agi]]];
}


-(IBAction)p1Serang:(id)sender
{
	if (![p1 isDeath] && ![p2 isDeath])
	{
		[p1 attack:p2];
		[self setLog:[p1 logs]];
	}else {
		[self melepas];
	}
}

-(IBAction)p2Serang:(id)sender
{
	if (![p1 isDeath] && ![p2 isDeath])
	{
		[p2 attack:p1];
		[self setLog:[p2 logs]];
	}else {
		[self melepas];
	}
}	

-(void)melepas
{
	NSLog(@" P2 : %@ menang", [p2 name]);
	NSLog(@"Peperangan Berakhir");
	[p1 release];
	[p1Weapon release];
	[p1HeadArmor release];
	
	[p2 release];
	[p2Weapon release];
	[p2HeadArmor release];
}

-(void)setLog:(NSString *)logs
{
	[isiLog addObject:logs];
	[textLog setStringValue:[isiLog description]];
}

@end

