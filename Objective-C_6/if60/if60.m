//if60
#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
    
		int num;
		NSLog(@"2:剪刀;　０:石頭：　５:布：");
		NSLog(@"請出示: ");
		scanf("%i", &num);
		
		if (num == 2) {
			NSLog(@"剪刀...");        
		}
		else if (num == 0) {
			NSLog(@"石頭...");
		}
		else if (num == 5) {
			NSLog(@"布...");
		}
		else {
			NSLog(@"不正確的手勢...");
		}
		
		NSLog(@"Over!");
    }
    return 0;
}
