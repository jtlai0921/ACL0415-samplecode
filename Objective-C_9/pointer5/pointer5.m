//pointer5
#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
	
		int a=100;
		int *ptr;
		ptr = &a;
		
		NSLog(@"ptr=%x, &a=%x", ptr, &a);
		NSLog(@"*ptr=%i, a=%i", *ptr, a);
	
    }
    return 0;
}
