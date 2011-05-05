//
//  Weapons.h
//  OOP
//
//  Created by masbog on 4/19/11.
//  Copyright 2011 masbog inc. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "Entity.h"

@interface Equipment : Entity {
	NSImage *ikon;
}

-(void) setIkon:(NSImage *) theIkon;

-(NSImage *) ikon;

-(id) initWithID:(NSString *)theID ikon:(NSImage *)theIkon;
@end
