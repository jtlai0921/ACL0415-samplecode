//for40
#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
    
		int i, total=0;
		for(i=2; i<=100; i++) {
			total += i;
		}
		NSLog(@"2加到100的總和: %i", total);
    }
    return 0;
}
