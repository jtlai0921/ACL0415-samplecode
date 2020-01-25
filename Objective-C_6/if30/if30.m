//if30
#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
    
		int num;
		NSLog(@"請輸入一整數: ");
		scanf("%i", &num);
		
		if (num == 1) {
			NSLog(@"請左轉...");        
		}
		else {
			NSLog(@"請右轉...");
		}
		
		NSLog(@"Over!");
    }
    return 0;
}
