//bit20
#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
    
		unsigned short int b1=10, b2=20;
		
		NSLog(@"b1=%i, b2=%i", b1, b2);
		b1 = b1 ^ b2;
		b2 = b2 ^ b1;
		b1 = b1 ^ b2; 
		NSLog(@"After swap....");
		NSLog(@"b1=%i, b2=%i", b1, b2);
	
    }
    return 0;
}