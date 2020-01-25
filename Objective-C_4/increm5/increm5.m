//increm5
#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
		
		int x=100;
		
		x++;
		NSLog(@"x=%i", x);
		
		x=100;
		++x;
		NSLog(@"x=%i", x);    
		
		x=100;
		NSLog(@"x=%i", x++);
		
		x=100;
		NSLog(@"x=%i", ++x);
		
    }
    return 0;
}    
