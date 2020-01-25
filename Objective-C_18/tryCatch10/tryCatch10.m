//tryCatch10
#import <Foundation/Foundation.h>

@interface Coordinate : NSObject
-(void) printWho;

@end

@implementation Coordinate

-(void) printWho
{
    NSLog(@"This is Coordinate class");
}

@end

//Circle class
@interface Circle : Coordinate
-(void) printWho;

@end

@implementation Circle

-(void) printWho
{
    NSLog(@"This is Circle class");
}

@end


int main(int argc, const char * argv[])
{

    @autoreleasepool {
		Coordinate *objCoord = [[Coordinate alloc]init];
		Circle *objCir = [[Circle alloc]init];
		
		@try {
			[objCir area];
		}
		@catch (NSException *exception) {
			NSLog(@"Caught %@%@", [exception name], [exception reason]);
		}
		NSLog(@"It's OK");
    }
    return 0;
}
