//if10
#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
		
		int num;
		NSLog(@"請輸入一整數:");
		scanf("%i", &num);
		if (num < 0) {
			num = -num;
		}
		
		NSLog(@"此數的絕對值為: %i", num);
    }
    return 0;
}
