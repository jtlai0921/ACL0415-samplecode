//class103
#import <Foundation/Foundation.h>

@interface myClass : NSObject
{
    int num1, num2;
    int total;
}

@property int num1, num2; 
-(int) sum;

@end


@implementation myClass

@synthesize num1, num2;

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
		
		[obj setNum1:100];
		[obj setNum2:200];
		
		total=[obj sum];
		
		NSLog(@"num1=%d, num2=%d", [obj num1], [obj num2]);
		NSLog(@"total = %d", total);
    }
    return 0;
}
