//
//  armorTreeController.m
//  SimpleGame
//
//  Created by masbog on 5/10/11.
//  Copyright 2011 masbog inc. All rights reserved.
//

#import "armorTreeController.h"


@implementation armorTreeController

-(void) dealloc
{
    [name release];
    [value release];
    [super dealloc];
}

@synthesize name;
@synthesize value;

+(armorTreeController*)armorTreeControllerFromName:(NSString*)name value:(NSString*)value
{
	armorTreeController *aTC = [[[armorTreeController alloc] init] autorelease];
	aTC.name = name;
	aTC.value = value;
	return aTC;
}

@end
