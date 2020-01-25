//input5
#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
		
		int month;
		int day;
		int year;
		
		NSLog(@"請輸入月份:");
		scanf("%i", &month);
		
		NSLog(@"請輸入哪一天:");
		scanf("%i", &day);
		
		NSLog(@"請輸入年份:");
		scanf("%i", &year);
		
		NSLog(@"您輸入的日期如下:");
		NSLog(@"%i/%i/%i", month, day, year);
		
    }
    return 0;
}
