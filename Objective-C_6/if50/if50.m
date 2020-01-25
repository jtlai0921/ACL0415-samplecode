//if50
#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
    
		int num;
		NSLog(@"1: 左轉;　2:右轉： 3: 直走");
		NSLog(@"選擇一號碼: ");
		scanf("%i", &num);
		
		if (num == 1) {
			NSLog(@"請左轉...");        
		}
		else if (num == 2) {
			NSLog(@"請右轉...");
		}
			else {
				NSLog(@"請直走...");
			}
		
		NSLog(@"Over!");
    }
    return 0;
}
