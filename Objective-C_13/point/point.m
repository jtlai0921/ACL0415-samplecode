//point
#import <Foundation/Foundation.h>

@interface Coordinate : NSObject
{
	int x;
	int y;
}

-(void) setX: (int) a;
-(void) setY: (int) b;
-(void) print;

@end

@implementation Coordinate
-(void) setX: (int) a
{
    x = a;
}

-(void) setY: (int) b
{
    y = b;
}

-(void) print
{
    NSLog(@"Coordinate is (%i, %i)", x, y);
}

@end

int main(int argc, const char * argv[])
{

    @autoreleasepool {
		Coordinate *obj = [[Coordinate alloc] init];
		
		[obj setX:10];
		[obj setY:20];
		NSLog(@"Point #1:");
		[obj print];
    }
    return 0;
}
