//
//  armorTreeController.h
//  SimpleGame
//
//  Created by masbog on 5/10/11.
//  Copyright 2011 masbog inc. All rights reserved.
//

#import <Cocoa/Cocoa.h>


@interface armorTreeController : NSObject {
	NSString *name;
	NSString *value;
}

@property (copy) NSString *name;
@property (copy) NSString *value;

+(armorTreeController*)armorTreeControllerFromName:(NSString*)name value:(NSString*)value;

@end
