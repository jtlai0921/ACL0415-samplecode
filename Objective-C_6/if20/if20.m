//if20
#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
		
		int score;
		NSLog(@"請輸入您的分數: ");
		scanf("%i", &score);
		
		if (score >= 60) {
			NSLog(@"恭喜您，通過...");
		}
		else {
			NSLog(@"抱歉，您被當了...");
		}
		
		NSLog(@"Over!");
    }
    return 0;
}
