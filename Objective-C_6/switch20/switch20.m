//switch20
#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
		
		int num;
		NSLog(@"2:剪刀;　０:石頭：　５:布：");
		NSLog(@"請出手勢:");
		scanf("%i", &num);
		
		switch (num) {
			case 2:
				NSLog(@"剪刀...");        
				
			case 0:
				NSLog(@"石頭...");
				
			case 5:
				NSLog(@"布...");
				
			default:
				NSLog(@"不正確的手勢...");
		}
		
		NSLog(@"Over!");
    }
    return 0;
}
