//if70
#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
	
		int year;
		NSLog(@"請輸入一年份:");
		scanf("%i", &year);
		if ((year % 400 == 0) || (year % 4 == 0) && (year % 100 != 0))
			NSLog(@"%i 是閏年", year);
		else {
			NSLog(@"%i 是平年", year);
		}
		
    }
    return 0;
}
