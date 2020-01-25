//logical5
#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
    
		int a=80, b=60;
		
		NSLog(@"%i > 90 && %i < 90 ---> %i", a, b, a > 90 && b < 90);
		NSLog(@"%i > 90 || %i < 90 ---> %i", a, b, a > 90 || b < 90);
		NSLog(@"%i > 70 && %i < 70 ---> %i", a, b, a > 70 && b < 70);
		NSLog(@"%i > 70 || %i < 70 ---> %i", a, b, a > 70 || b < 70);
		
		NSLog(@"!(%i > 90) ---> %i", a, !(a > 90));
		NSLog(@"!(%i < 90) ---> %i", a, !(a < 90));
	
    }
    return 0;
}
