//class99
#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
		int num1, num2, total=0;
		//input
		num1 = 100;
		num2 = 200;
		
		//process
		total = num1 + num2;
		
		//output
		NSLog(@"num1=%d, num2=%d", num1, num2);
		NSLog(@"total=%d", total);
		
    }
    return 0;
}
