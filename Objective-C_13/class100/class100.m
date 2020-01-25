//class100
#import <Foundation/Foundation.h>

@interface myClass : NSObject
{
	int num1, num2;
}

-(void) setData;
-(int) sum;
-(void) output;

@end


@implementation myClass

-(void) setData
{
    num1=100;
    num2=200;
}

-(int) sum
{
    return (num1+num2);
}

-(void) output
{
    NSLog(@"num1=%d, num2=%d", num1, num2);
}    

@end

int main(int argc, const char * argv[])
{

    @autoreleasepool {
		myClass *obj = [[myClass alloc] init];
		int total;
		
		[obj setData];
		total = [obj sum];
		[obj output];
		NSLog(@"total=%i", total);
		

    }
    return 0;
}
