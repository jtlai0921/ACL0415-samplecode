//input10
#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
		
		int month, day, year;
		
		NSLog(@"請輸入日期: (mm dd yy)");
		scanf("%i %i %i", &month, &day, &year);
		
		NSLog(@"您輸入的日期如下:");
		NSLog(@"%i/%i/%i", month, day, year);
		
    }
    return 0;
}
