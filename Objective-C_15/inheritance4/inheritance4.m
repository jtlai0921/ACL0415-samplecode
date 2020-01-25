//inheritance4 
#import <Foundation/Foundation.h>

@interface Coordinate : NSObject
{
    int x;
    int y;
}

@property int x, y;

@end

@implementation Coordinate
@synthesize x, y; 

@end


int main(int argc, const char * argv[])
{

    @autoreleasepool {
		Coordinate *obj = [[Coordinate alloc]init];
		
		[obj setX:10];
		[obj setY:20];
		NSLog(@"Point #1:");
		NSLog(@"Coordinate is (%i, %i)", [obj x], [obj y]);

	
    }
    return 0;
}
