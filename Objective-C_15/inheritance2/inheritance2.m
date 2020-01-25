//inheritance2
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

-(void) print;

@end

@implementation Child

-(void) print
{
    NSLog(@"num1=%i", num1);
}

@end

int main (int argc, const char * argv[]) {
	
	@autoreleasepool{	
		Child *objChild = [[Child alloc]init];
		[objChild setData];
		[objChild print];
    }
    return 0;
}
