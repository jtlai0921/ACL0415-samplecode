//bit5
#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
	
		unsigned short int b1=29, b2=21;
		
		NSLog(@"%i & %i = %i", b1, b2, b1&b2);
		NSLog(@"%i | %i = %i", b1, b2, b1|b2);
		NSLog(@"%i ^ %i = %i", b1, b2, b1^b2);
		
		NSLog(@"~%i = %i", b1, ~b1);
		
    }
    return 0;
}
