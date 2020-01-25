//math5
#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
		
		double x=2, y=5;
		
		NSLog(@"pow(%.2f, %.2f) = %.2f", x, y, pow(x, y));
		NSLog(@"sqrt(%.2f) = %f", x, sqrt(x));
		NSLog(@"floor(2.5) = %f", floor(2.5));
		NSLog(@"ceil(2.5) = %f", ceil(2.5));
		NSLog(@"exp(2) = %f", exp(2));
		NSLog(@"log(100) = %f", log(100));
		NSLog(@"log10(100) = %f", log10(100));
		
		NSLog(@"abs(-100) = %i", abs(-100));
		NSLog(@"fabs(-100.123) = %f", fabs(-100.123));
		
    }
    return 0;
}
