//switch30
#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
		
		int num, i;
		for(i=1; i<=5; i++) {
			
			NSLog(@"\n2:剪刀;　０:石頭：　５:布：");
			NSLog(@"請出手勢; ");
			scanf("%i", &num);
			
			switch (num) {
				case 2:
					NSLog(@"剪刀...");        
					break;
				case 0:
					NSLog(@"石頭...");
					break;
				case 5:
					NSLog(@"布...");
					break;
				default:
					NSLog(@"不正確的手勢...");
			}
		}
		NSLog(@"Over!");
    }
    return 0;
}
