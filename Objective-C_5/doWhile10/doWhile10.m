//doWhile10
#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
		
		int i=1, total=0;
		do {
			total += i;
			i++;        
		} while(i<=100);
		
		NSLog(@"1加到100的總和為: %i", total);
    }
    return 0;
}
