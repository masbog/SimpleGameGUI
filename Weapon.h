//
//  Weapon.h
//  OOP
//
//  Created by masbog on 4/28/11.
//  Copyright 2011 masbog inc. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "Entity.h"

@interface Weapon : Entity {
	NSString *wName;
	NSString *type;
	NSString *apparel;
	int atk, def, agi, dmg;
}

-(void)setName:(NSString *)theName;
-(void)setType:(NSString *)theType;
-(void)setApparel:(NSString *)theApparel;
-(void)setAtk:(int)theAtk;
-(void)setDef:(int)theDef;
-(void)setAgi:(int)theAgi;
-(void)setDmg:(int)theDmg;

-(NSString *)wName;
-(NSString *)type;
-(NSString *)apparel;
-(int)atk;
-(int)def;
-(int)agi;
-(int)dmg;

-(id)initWithID:(NSString *)theID 
		   wName:(NSString *)theName 
		   type:(NSString *)theType 
		apparel:(NSString *)theApparel 
			dmg:(int)theDmg
			atk:(int)theAtk 
			def:(int)theDef 
			agi:(int)theAgi;


@end
