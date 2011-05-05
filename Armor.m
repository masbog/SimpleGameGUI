    //
//  Armor.m
//  OOP
//
//  Created by masbog on 4/28/11.
//  Copyright 2011 masbog inc. All rights reserved.
//

#import "Armor.h"

@implementation Armor

-(void)setName:(NSString *)theName
{
	[name release];
	name = [theName retain];
}
-(NSString *)name
{
	return name;
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

-(void)setApparel:(ArmorApparel)theApparel
{
	apparel = theApparel;
}
-(ArmorApparel)apparel
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



-(id)initWithID:(NSString *)theID 
			 name:(NSString *)theName 
			 type:(NSString *)theType 
		  apparel:(ArmorApparel)theApparel 
			  atk:(int)theAtk 
			  def:(int)theDef 
			  agi:(int)theAgi
{
	self= [super initWithID:theID];
	if (self != nil) {
		name = [theName retain];
		type = [theType retain];
		apparel = theApparel;
		atk = theAtk;
		def = theDef;
		agi = theAgi;
	}
	return self;
}


- (void)dealloc {
	[name release];
	[type release];
    [super dealloc];
}


@end
