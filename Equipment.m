
#import "Equipment.h"


@implementation Equipment
	
-(void) setIkon:(NSImage *)theIkon
{
	[ikon release];
	ikon = [theIkon retain];
}

-(NSImage *) ikon
{
	return ikon;
}

-(id) initWithID:(NSString *)theID ikon:(NSImage *)theIkon 
{
	self = [super initWithID:theID];
	if (self!=nil) {
		ikon = [theIkon retain];
	}
	return self;
}

-(void)dealloc
{
	[ikon release];
	[super dealloc];
}
	
@end
