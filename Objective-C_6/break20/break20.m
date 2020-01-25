//break20
#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
	
		int num;
		NSLog(@"\n2:剪刀;　０:石頭：　５:布： -1:結束: ");
		NSLog(@"請出手勢: ");
		scanf("%i", &num);
		
		while (1) {
			if (num == -1) {
				break;
			}
			else {
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
				
				NSLog(@"\n2:剪刀;　０:石頭：　５:布： -1:結束: ");
				NSLog(@"請出手勢: ");
				scanf("%i", &num);
			}
		}
		NSLog(@"Over!");
    }
    return 0;
}
