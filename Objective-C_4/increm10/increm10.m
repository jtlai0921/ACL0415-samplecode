//increm10
#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
		
		int x=100, sum=0;
		
		sum = x++ + 100;
		NSLog(@"x=%i, sum=%i", x, sum);
		
		x=100;
		sum = ++x + 100;
		NSLog(@"x=%i, sum=%i", x, sum);    
	
    }
    return 0;
}
