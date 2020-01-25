//inheritance10
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


@interface Rectangle : Coordinate
{
    int m, n;
}
@property int m, n;

-(void) setX: (int) p andY: (int) q;
-(void) setM: (int) a andN: (int) b;
-(int) area;

@end

@implementation Rectangle
@synthesize m, n;

-(void) setX: (int) p andY: (int) q
{
    x=p;
    y=q;
}

-(void) setM: (int) a andN: (int) b
{
    m=a;
    n=b;
}

-(int) area
{
    int width, height;
    width=abs(x-m);
    height=abs(y-n);
    return width*height;
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
		
		Rectangle *objRec = [[Rectangle alloc]init];
		NSLog(@"Rectangle:");
		NSLog(@"Coordinate is (%i, %i)", [objRec x], [objRec y]);
		
		NSLog(@"After setting...");
		[objRec setX:20 andY: 20];
		NSLog(@"Coordinate is (%i, %i)", [objRec x], [objRec y]);    
		
		[objRec setM:50 andN: 60];
		NSLog(@"Coordinate is (%i, %i)", [objRec m], [objRec n]);
		
		NSLog(@"Area = %i", [objRec area]);
    }
    return 0;
}
