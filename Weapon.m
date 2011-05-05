    //
//  Weapon.m
//  OOP
//
//  Created by masbog on 4/28/11.
//  Copyright 2011 masbog inc. All rights reserved.
//

#import "Weapon.h"


@implementation Weapon

-(void)setName:(NSString *)theName
{
	[wName release];
	wName = [theName retain];
}
-(NSString *)wName
{
	return wName;
}

-(void)setType:(NSString *)theType
{
	[type release];
	type = [theType retain];
}
-(NSString *)type
{
	return type;
}

-(void)setApparel:(NSString *)theApparel
{
	[apparel release];
	apparel = [theApparel retain];
}
-(NSString *)apparel
{
	return apparel;
}

-(void)setAtk:(int)theAtk
{
	atk = theAtk;
}
-(int)atk
{
	return atk;
}

-(void)setDef:(int)theDef
{
	def =theDef;
}
-(int)def
{
	return def;
}

-(void)setAgi:(int)theAgi
{
	agi = theAgi;
}

-(int)agi
{
	return agi;
}

-(void)setDmg:(int)theDmg
{
	dmg = theDmg;
}

-(int)dmg
{
	return dmg;
}



-(id)initWithID:(NSString *)theID 
		   wName:(NSString *)theName 
		   type:(NSString *)theType 
		apparel:(NSString *)theApparel 
			dmg:(int)theDmg 
			atk:(int)theAtk 
			def:(int)theDef 
			agi:(int)theAgi
{
	self= [super initWithID:theID];
	if (self != nil) {
		wName = [theName retain];
		type = [theType retain];
		apparel = [theApparel retain];
		dmg = theDmg;
		atk = theAtk;
		def = theDef;
		agi = theAgi;
	}
	return self;
}


- (void)dealloc {
	[wName release];
	[type release];
	[apparel release];
    [super dealloc];
}


@end
