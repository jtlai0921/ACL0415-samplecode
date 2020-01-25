//math12
#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
		int i;
		srand(10);
		for(i=1; i<=10; i++)
			NSLog(@"%i", rand()%100+1);
		
		NSLog(@"再產生一次");
		srand(200);
		for(i=1; i<=10; i++)
			NSLog(@"%i", rand()%100+1);
		
    }
    return 0;
}
