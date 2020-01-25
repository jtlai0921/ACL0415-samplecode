//point5
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
		Coordinate *obj1 = [[Coordinate alloc]init];
		Coordinate *obj2 = [[Coordinate alloc]init];
		
		[obj1 setX:100];
		[obj1 setY:200];
		NSLog(@"Point #1:");
		[obj1 print];
		
		[obj2 setX:150];
		[obj2 setY:250];
		NSLog(@"Point #2:");
		[obj2 print];

    }
    return 0;
}
