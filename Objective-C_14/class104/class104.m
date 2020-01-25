//class104
#import <Foundation/Foundation.h>

@interface myClass : NSObject
{
    int num1, num2;
    int total;
}

@property int num1, num2; 

-(void) setNum1: (int) n andNum2: (int) m;
-(int) sum;

@end


@implementation myClass

@synthesize num1, num2;

-(void) setNum1: (int) n andNum2: (int) m
{
    num1=n;
    num2=m;
}

-(int) sum
{
    return (num1+num2);
} 

@end

int main(int argc, const char * argv[])
{

    @autoreleasepool {
		myClass *obj = [[myClass alloc] init];
		int total;
		
		[obj setNum1:666 andNum2:888];
		
		total=[obj sum];
		
		NSLog(@"num1=%d, num2=%d", [obj num1], [obj num2]);
		NSLog(@"total = %d", total);
    }
    return 0;
}
