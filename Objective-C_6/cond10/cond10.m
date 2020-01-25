//cond10
#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
		
		int num, absolute;
		
		NSLog(@"請輸入一整數: ");
		scanf("%i", &num);
		
		if (num < 0 ) {
			absolute = -num;
		}
		else {
			absolute = num;
		}
		
		NSLog(@"%i 的絕對值為: %i", num, absolute);
		
		NSLog(@"使用三元運算子運算之:");
		absolute = (num < 0) ? -num : num;    
		NSLog(@"%i 的絕對值為: %i", num, absolute);
	
    }
    return 0;
}
