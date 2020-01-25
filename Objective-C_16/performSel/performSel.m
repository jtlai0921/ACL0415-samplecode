//performSel
#import <Foundation/Foundation.h>

@interface Coordinate : NSObject
-(void) printWho;

@end

@implementation Coordinate

-(void) printWho
{
    NSLog(@"This is Coordinate class");
}

@end

//Circle class
@interface Circle : Coordinate
-(void) printWho;

@end

@implementation Circle

-(void) printWho
{
    NSLog(@"This is Circle class");
}

@end

//Rectangle class
@interface Rectangle : Coordinate

-(void) printWho; 

@end

@implementation Rectangle  

-(void) printWho
{
    NSLog(@"This is Rectangle class");
}

@end

int main(int argc, const char * argv[])
{

    @autoreleasepool {
		Coordinate *objCoord = [[Coordinate alloc]init];
		Rectangle *objRec = [[Rectangle alloc]init];
		Circle *objCir = [[Circle alloc]init];
		
		SEL action;
		id shapeObject;
		
		shapeObject = objCoord;
		action = @selector(printWho);    
		[shapeObject performSelector: action];    
		
		shapeObject = objCir;
		action = @selector(printWho);
		[shapeObject performSelector: action];    
		
		shapeObject = objRec;
		action = @selector(printWho);
		[shapeObject performSelector: action];
		
		if([shapeObject respondsToSelector: action] == YES)
			[shapeObject performSelector: action];
		else 
			NSLog(@"Action is not found"); 
		
		action = @selector(area);
		if([shapeObject respondsToSelector: action] == YES)
			[shapeObject performSelector: action];
		else 
			NSLog(@"area method is not found"); 
			
    }
    return 0;
}
