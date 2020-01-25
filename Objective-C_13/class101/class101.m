//class101
#import <Foundation/Foundation.h>

@interface myClass : NSObject
{
    int num1, num2;
}

-(int) sum;

@end


@implementation myClass

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
		
		num1=100;
		num2=200;
		
		total = [obj sum];
		
		NSLog(@"num1=%d, num2=%d", num1, num2);
		NSLog(@"total = %d", total);
		
    }
    return 0;
}
