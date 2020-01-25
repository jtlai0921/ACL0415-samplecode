//dynamic20
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
		
		//Test respondsToSelector: method
		NSLog(@"Test respondsToSelector: method");
		if([objCir respondsToSelector: @selector(setRadius:)] == YES)
			NSLog(@"objCir responds to setRadius: method");
		
		if([objCir respondsToSelector: @selector(area)] == YES)
			NSLog(@"objCir responds to area method");
		
		if([objCir respondsToSelector: @selector(setX:andY:)] == YES)
			NSLog(@"objCir responds to setX:andY: method");
		
		if([objRec respondsToSelector: @selector(setRadius:)] == YES)
			NSLog(@"objRec responds to setRadius: method");
		
		if([objRec respondsToSelector: @selector(setX:andY:)] == YES)
			NSLog(@"objRec responds to setX:andY: method");
		
		if([objRec respondsToSelector: @selector(setM:andN:)] == YES)
			NSLog(@"objRec responds to setM:andN: method");
		
		
		if([Circle respondsToSelector: @selector(setM:andN:)] == YES)
			NSLog(@"objRec responds to setM:andN method");
		
		if([Circle respondsToSelector: @selector(alloc)] == YES)
			NSLog(@"Circle responds to alloc method");
		
		
		//Test instancesRespondToSelector: method
		NSLog(@"Test instancesRespondToSelector: method");
		if([Circle instancesRespondToSelector: @selector(setRadius:)] == YES)
			NSLog(@"instances of Circle respond to setRadius: method");
		
		if([Circle instancesRespondToSelector: @selector(area)] == YES)
			NSLog(@"instances of Circle respond to area method");
		
		if([Circle instancesRespondToSelector: @selector(setX:andY:)] == YES)
			NSLog(@"instances of Circle respond to setX:andY: method");
		
		if([Rectangle instancesRespondToSelector: @selector(setRadius:)] == YES)
			NSLog(@"instances of Recangle respond to setRadius: method");
		
		if([Rectangle instancesRespondToSelector: @selector(setX:andY:)] == YES)
			NSLog(@"instances of Rectangle respond to setX:andY: method");
		
		if([Rectangle instancesRespondToSelector: @selector(setM:andN:)] == YES)
			NSLog(@"instances of Rectangle respond to setM:andN: method");
		
		if([Circle instancesRespondToSelector: @selector(setM:andN:)] == YES)
			NSLog(@"instances of Circle respond to setM:andN method");
		
		if([Circle instancesRespondToSelector: @selector(alloc)] == YES)
			NSLog(@"instances of Circle respond to alloc method");
		
		//Test isSubclassOfClass: method
		if([Circle isSubclassOfClass: [Coordinate class]] == YES)
			NSLog(@"Circle is subclass of a Coordinate");    
		
		if([Circle isSubclassOfClass: [Rectangle class]] == YES)
			NSLog(@"Circle is subclass of a Rectangle");
    }
    return 0;
}
