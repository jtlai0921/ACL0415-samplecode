//for50
#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
    
		int i, total=0;
		for(i=1; i<100; i++) {
			total += i;
		}
		NSLog(@"1加到99的總和: %i", total);
    }
    return 0;
}
