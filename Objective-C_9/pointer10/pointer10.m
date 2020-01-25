//pointer10
#import <Foundation/Foundation.h>

void change(int *p, int *q);

int main(int argc, const char * argv[])
{

    @autoreleasepool {
		
		int x=666, y=888;
		
		NSLog(@"Before changed...");
		NSLog(@"x=%i, y=%i", x, y);
		
		change(&x, &y);
		
		NSLog(@"After changed...");
		NSLog(@"x=%i, y=%i", x, y);
		
    }
    return 0;
}

void change(int *p, int *q)
{
    int temp;
    temp = *p;
    *p = *q;
    *q = temp;
}
