//bit15
#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
		
		unsigned short int p=64;
		
		NSLog(@"%i << 2 = %i", p, p << 2);
		
		p=64;
		NSLog(@"%i >> 2 = %i", p, p >> 2);
		
    }
    return 0;
}  
