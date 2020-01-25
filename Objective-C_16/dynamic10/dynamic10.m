//dynamic10
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

//Circle class
@interface Circle : Coordinate
{
    int radius;
}
@property int radius;

-(void) setX: (int) a andY: (int) b;
-(double) area;
-(void) setRadius: (int) r;

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

//Rectangle class
@interface Rectangle : Coordinate
{
    int m, n;
}
@property int m, n;

-(void) setX: (int) p andY: (int) q;
-(void) setM: (int) a andN: (int) b;
-(double) area;

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

-(double) area
{
    double width, height;
    width=abs(x-m);
    height=abs(y-n);
    return width*height;
}

@end

int main(int argc, const char * argv[])
{

    @autoreleasepool {
		Coordinate *objCoord = [[Coordinate alloc]init];
		Rectangle *objRec = [[Rectangle alloc]init];
		Circle *objCir = [[Circle alloc]init];
		
		//Test isMemberOfClass: method
		NSLog(@"Test isMemberOfClass: method");
		if([objCir isMemberOfClass: [Circle class]] == YES)
			NSLog(@"objCir is a member of Circle class");
		
		if([objRec isMemberOfClass: [Circle class]] == YES)
			NSLog(@"objRec is a member of Circle class");
		
		if([objRec isMemberOfClass: [Coordinate class]] == YES)
			NSLog(@"objRec is a member of Coordinate class");
		
		if([objRec isMemberOfClass: [Rectangle class]] == YES)
			NSLog(@"objRec is a member of Rectangle class");    
		
		//Test isKindOf: method
		NSLog(@"Test isKindOfClass: method");
		if([objCir isKindOfClass: [Circle class]] == YES)
			NSLog(@"objCir is a kind of Circle class");
		
		if([objRec isKindOfClass: [Circle class]] == YES)
			NSLog(@"objRec is a kind of Circle class");
		
		if([objRec isKindOfClass: [Coordinate class]] == YES)
			NSLog(@"objRec is a kind of Coordinate class");
		
		if([objRec isKindOfClass: [Rectangle class]] == YES)
			NSLog(@"objRec is a kind of Rectangle class");
			
    }
    return 0;
}
