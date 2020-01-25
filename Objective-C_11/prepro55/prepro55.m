//prepro55
#import <Foundation/Foundation.h>

typedef int INTEGER;
typedef int *POINTER;

int main(int argc, const char * argv[])
{

    @autoreleasepool {
		
		INTEGER x=100, y=200;
		POINTER ptr=&x;
		
		NSLog(@"%i+%i=%i", x, y, x+y);
		NSLog(@"*ptr=%i", *ptr);
		
    }
    return 0;
}
