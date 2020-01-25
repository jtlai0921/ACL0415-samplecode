//input20
#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
		
		float f;
		double d;
		NSLog(@"請輸入float值: ");
		scanf("%f", &f);
		
		NSLog(@"請輸入double值: ");
		scanf("%lf", &d);
		
		NSLog(@"f=%f, d=%f", f, d);
    }
    return 0;
}