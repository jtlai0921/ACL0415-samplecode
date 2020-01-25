//poly10
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
		Rectangle *objRec = [[Rectangle alloc]init];
		Circle *objCir = [[Circle alloc]init];
		
		id shape;
		shape = objCir;
		//設定圓的中心點
		[shape setX:5 andY:10]; 
		[shape setRadius: 8];
		NSLog(@"The center of circle is (%i, %i)", [shape x], [shape y]);
		NSLog(@"radius is %i", [shape radius]);
		NSLog(@"The area of circle is %.2f", [shape area]);
		
		//設定矩形的兩點
		shape = objRec;
		[shape setX:20 andY: 20];
		[shape setM:50 andN: 60];
		NSLog(@"Point #1 of Rectangle is (%i, %i)", [shape x], [shape y]);
		NSLog(@"Point #2 is (%i, %i)", [shape m], [shape n]);    
		NSLog(@"The area of rectangle = %.2f", [shape area]);
    }
    return 0;
}
