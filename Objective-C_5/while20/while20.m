//while20
#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
		
		int i=1, total=0;
		while(i<=100) {
			i++;
			total += i;
		}
		NSLog(@"1加到100的總和為: %i", total);
    }
    return 0;
}
