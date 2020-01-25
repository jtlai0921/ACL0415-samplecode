//poly5
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
		Rectangle *objRec = [[Rectangle alloc]init];
		Circle *objCir = [[Circle alloc]init];
		
		//設定圓的中心點
		[objCir setX:5 andY:10]; 
		[objCir setRadius: 8];
		NSLog(@"The center of circle is (%i, %i)", [objCir x], [objCir y]);
		NSLog(@"radius is %i", [objCir radius]);
		NSLog(@"The area of circle is %.2f", [objCir area]);
		
		//設定矩形的兩點
		[objRec setX:20 andY: 20];
		[objRec setM:50 andN: 60];
		NSLog(@"Point #1 of Rectangle is (%i, %i)", [objRec x], [objRec y]);
		NSLog(@"Point #2 is (%i, %i)", [objRec m], [objRec n]);
		
		NSLog(@"The area of rectangle = %i", [objRec area]);
    }
    return 0;
}
