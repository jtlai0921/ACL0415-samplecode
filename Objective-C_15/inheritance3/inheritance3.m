//inheritance3
#import <Foundation/Foundation.h>

@interface Parent : NSObject
{
    int num1;
}

-(void) setData;

@end

@implementation Parent

-(void) setData
{
    num1=666;
}

@end

@interface Child : Parent
{
    int num2;
}

-(void) setData;
-(void) print;

@end

@implementation Child

-(void) setData
{
    num1=888;
    num2=999;
}

-(void) print
{
    NSLog(@"num1=%i, num2=%i", num1, num2);
}

@end

int main(int argc, const char * argv[])
{

    @autoreleasepool {
    
		Child *objChild = [[Child alloc]init];
		[objChild setData];
		[objChild print];
		

    }
    return 0;
}
