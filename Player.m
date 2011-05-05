//
//  Players.m
//  OOP
//
//  Created by masbog on 4/19/11.
//  Copyright 2011 masbog inc. All rights reserved.
//

#import "Player.h"
#import "Equipment.h"
#import "Armor.h"
#import "Weapon.h"

@implementation Player

-(void) setName:(NSString *)theName 
{
	[name release];
	name = [theName retain];
}

-(void) setHealth:(int)theHealth
{
	health = theHealth;
}

-(void) setAgib:(int)theAgib
{
	agib = theAgib;
}

-(void) setCharacter:(NSString *)theCharacter
{
	[character release];
	character = [theCharacter retain];
}

-(void) setCharType:(CharacterType)theCharType
{
	charType = theCharType;
}

-(CharacterType)charType
{
	return charType;
}

-(NSString *) name
{
	return name;
}


-(NSString *) serang
{
	return serang;
}

-(int) health
{
	return health;
}

-(int) agib
{
	return agib;
}

-(NSString *) character
{
	return character;
}

-(id) initWithID:(NSString *)theID 
			name:(NSString *)theName 
		  health:(int)theHealth 
		charType:(int)theCharType
			agib:(int)theAgib
{
	self = [super initWithID:theID];
	if (self != nil) {
		name = [theName retain];
		health = theHealth;
		charType = theCharType;
		agib = theAgib;
	}
	return self;
}
-(BOOL) isDeath
{
	return ( health <= 0 ? YES : NO );
}

-(BOOL) isMissing
{
	agiPenyerang = (2 * agiPenyerang) * 0.1 * arc4random();
	agiDiserang = agiDiserang * 0.1 * arc4random();
	if (agiPenyerang <= agiDiserang) {
		NSLog(@"waduh serangan %@ tidak mengenai karena agility %@ : %f dan agility diserang : %f", [self name], [self name], agiPenyerang, agiDiserang);
	}else {
		NSLog(@"serangan %@ tepat sasaran!", [self name]);
	}
	return ( agiPenyerang > agiDiserang ? YES : NO );}

-(void)attack:(Player *)other
{
	int attA, defB;
	NSString *sasaran;
	agiPenyerang = [self agib];
	agiDiserang = [other agib];
	if ([self isDeath]) {
		NSLog(@"%@ mati", [self name]);
		return;
	}
	if (![other isDeath] && [self isMissing]) {
		attA = [weapon atk];
		int rnd = rand() % 3 ;
		switch (rnd) {
			case 1:
				defB = [[other headArmor] def];
				sasaran = @"Kepala";
				break;
			case 2:
				defB = [[other bodyArmor] def];
				sasaran = @"Badan";
				break;
			case 3:
				defB = [[other footArmor] def];
				sasaran = @"Kaki";
				break;
			default:
				break;
		}
		NSLog(@"penyerang : %@, yang diserang : %@ ", [self name], [other name]);
		int oldHealth = [other health];
		int totalDmg = (attA - defB) * 0.01 * [weapon dmg];
		if (attA <= defB) {
			[other setHealth:[other health] - 0];
		}else {
			[other setHealth:[other health] - totalDmg];
		}
		NSLog(@"%@ diserang %@ pada bagian %@-nya, maka nyawa %@ tadinya %d tinggal %d karena Total damage serangan dari %@ : %d",
			  [other name], [self name], sasaran, [other name], oldHealth, [other health], [self name], totalDmg);
	}
}


- (void) setWeapon:(Weapon *)theWeapon
{
	if (theWeapon != nil) {
		[weapon release];
		weapon = [theWeapon retain];
	}
}

- (Weapon *) weapon
{
	return weapon;
}

-(void) setIsiArmor:(Armor *)theIsiArmor
{
	if (theIsiArmor != nil) {
		switch ([theIsiArmor apparel]) {
			case ArmorHead:
				[headArmor release];
				headArmor = [theIsiArmor retain];
				break;
			case ArmorBody:
				[bodyArmor release];
				bodyArmor = [theIsiArmor retain];
				break;
			case ArmorFoot:
				[footArmor release];
				footArmor = [theIsiArmor retain];
				break;
			default:
				break;
		}
	}
}
-(Armor *) headArmor
{
	return headArmor;
}
-(Armor *) bodyArmor
{
	return bodyArmor;
}
-(Armor *) footArmor
{
	return footArmor;
}
-(Armor *) isiArmor
{
	return isiArmor;
}

-(void) dealloc
{
	[weapon release];
	[name release];
	[pertahanan release];
	[isiArmor release];
	[super dealloc];
}

@end
