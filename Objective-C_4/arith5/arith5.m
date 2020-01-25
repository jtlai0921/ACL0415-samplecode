//arith5
#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
		
		int a= 80, b=60;
		
		NSLog(@"%i + %i = %i", a, b, a+b);
		NSLog(@"%i - %i = %i", a, b, a-b);
		NSLog(@"%i * %i = %i", a, b, a*b);
		NSLog(@"%i / %i = %i", a, b, a/b);
		NSLog(@"%i %% %i = %i", a, b, a%b);
		
		NSLog(@"(double)%i / %i = %f", a, b, (double)a/b);
		NSLog(@"%i. / %i = %f", a, b, 80./60);
		
    }
    return 0;
}
