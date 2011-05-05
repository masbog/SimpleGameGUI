//
//  Armor.h
//  OOP
//
//  Created by masbog on 4/28/11.
//  Copyright 2011 masbog inc. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "Entity.h"

typedef enum _ArmorApparel {
	ArmorHead,
	ArmorBody,
	ArmorFoot
} ArmorApparel;

@interface Armor : Entity {
	NSString *name;
	NSString *type;
	ArmorApparel apparel;
	int atk, def, agi;
}

-(void)setName:(NSString *)theName;
-(void)setType:(NSString *)theType;
-(void)setApparel: (ArmorApparel) theApparel;
-(void)setAtk:(int)theAtk;
-(void)setDef:(int)theDef;
-(void)setAgi:(int)theAgi;

-(NSString *)name;
-(NSString *)type;
-(ArmorApparel)apparel;
-(int)atk;
-(int)def;
-(int)agi;

-(id)initWithID:(NSString *)theID 
			 name:(NSString *)theName 
			 type:(NSString *)theType 
		  apparel:(ArmorApparel)theApparel 
			  atk:(int)theAtk 
			  def:(int)theDef 
			  agi:(int)theAgi;

@end
