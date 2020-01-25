//point15
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
		Coordinate *obj1 = [[Coordinate alloc]init];
		Coordinate *obj2 = [[Coordinate alloc]init];
		
		[obj1 setX:100];
		[obj1 setY:200];
		NSLog(@"Point #1:");
		NSLog(@"Coordinate is (%i, %i)", [obj1 x], [obj1 y]);
		
		
		[obj2 setX:150];
		[obj2 setY:250];
		NSLog(@"Point #2:");
		NSLog(@"Coordinate is (%i, %i)", obj2.x, obj2.y);
    }
    return 0;
}
