//
//  Entity.h
//  OOP
//
//  Created by masbog on 4/19/11.
//  Copyright 2011 masbog inc. All rights reserved.
//

#import <Cocoa/Cocoa.h>


@interface Entity : NSObject {
	NSString *ID;
}

//setter
-(void) setID:(NSString *) theID;

//getter
-(NSString *) ID;

//cosntructor
-(id) initWithID:(NSString *) theID;

@end
