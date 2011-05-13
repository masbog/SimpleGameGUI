//
//  Players.h
//  OOP
//
//  Created by masbog on 4/19/11.
//  Copyright 2011 masbog inc. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "Entity.h"
#import "Armor.h"
#import "Weapon.h"

typedef enum _CharacterType {
	Penyerang,
	Bertahan
} CharacterType;

@interface Player : Entity {
	NSString *logs;
	
	NSString *name;
	NSString *serang;
	int health, agib;
	NSString *character;
	Weapon *weapon;
	NSMutableArray *pertahanan;
	CharacterType charType;
	Armor *headArmor;
	Armor *bodyArmor;
	Armor *footArmor;
	float agiPenyerang, agiDiserang;
	Armor *isiArmor;
}
@property(nonatomic, retain)NSString *logs;

-(void) setName:(NSString *) theName;
-(void) setHealth:(int) theHealth;
-(void) setCharacter:(NSString *) theCharacter;
-(void) setWeapon: (Weapon *) theWeapon;
-(void) setAgib:(int) theAgib;
-(void) setCharType:(CharacterType) theCharType;

-(NSString *) name;
-(int) health;
-(int) agib;
-(NSString *) character;
-(NSString *) serang;
-(Weapon *) weapon;
-(CharacterType)charType;

-(Armor *) headArmor;
-(Armor *) bodyArmor;
-(Armor *) footArmor;
-(Armor *) isiArmor;
-(void) setIsiArmor: (Armor *) theIsiArmor;

/* player behaviour */
-(BOOL) isDeath;
-(BOOL) isMissing;
//-(void) decreaseHealth: (int) dec;
-(void) attack: (Player*) other;

-(id) initWithID:(NSString *)theID 
			name:(NSString *)theName 
		  health:(int)theHealth 
		charType:(int)theCharType
			agib:(int)theAgib;

@end
