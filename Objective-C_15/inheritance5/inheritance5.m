//inheritance5
#import <Foundation/Foundation.h>

//父類別
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

//子類別
@interface Circle : Coordinate
{
    int radius;
}

@property int radius;

-(void) setX: (int) a andY: (int) b;
-(void) setRadius: (int) r;
-(double) area;

@end

@implementation Circle
@synthesize radius;
-(void) setX: (int) a andY: (int) b
{
    x=a;
    y=b;
}

-(void) setRadius: (int) r
{
    radius = r;
}

-(double) area
{
    return (3.14159*radius*radius);
}

@end

int main(int argc, const char * argv[])
{

    @autoreleasepool {
		Coordinate *obj = [[Coordinate alloc]init];
		
		[obj setX:10];
		[obj setY:20];
		NSLog(@"Point #1:");
		NSLog(@"Coordinate is (%i, %i)", [obj x], [obj y]);
		
		Circle *objCir = [[Circle alloc]init];
		
		[objCir setX:66 andY: 88];
		
		NSLog(@"\nThe center of circle:");
		NSLog(@"Coordinate is (%i, %i)", [objCir x], [objCir y]);
		[objCir setRadius: 10];
		NSLog(@"radius = %i", [objCir radius]);
		[objCir area];
		NSLog(@"Area = %.2f", [objCir area]);
    }
    return 0;
}
