//math10
#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
		int i;
		
		for(i=1; i<=10; i++)
			NSLog(@"%i", rand()%100+1);
		
    }
    return 0;
}
