//
//  Entity.m
//  OOP
//
//  Created by masbog on 4/19/11.
//  Copyright 2011 masbog inc. All rights reserved.
//

#import "Entity.h"


@implementation Entity

-(void) setID:(NSString *)theID 
{
	[ID release];
	ID = [theID retain];
}

-(NSString *) ID
{
	return ID;
}

-(id)initWithID:(NSString *)theID
{
	self = [super init];
	if (self != nil) {
		ID = [theID retain];
	}
	return self;
}

-(NSString *) description
{
	return [NSString stringWithFormat:@"Kesatuan dengan ID : %@", ID];
}

-(void) dealloc
{
	[ID release];
	[super dealloc];
}

@end
