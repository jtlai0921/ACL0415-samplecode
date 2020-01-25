//prepro20
#import <Foundation/Foundation.h>
#define SQUARE(x) (x) * (x)

int main(int argc, const char * argv[])
{

    @autoreleasepool {
    
		int s;
		
		s = SQUARE(9);    
		NSLog(@"9的平方為%i", s);
		
		s = SQUARE(8+1);    
		NSLog(@"8+1的平方為%i", s);
		
    }
    return 0;
}
