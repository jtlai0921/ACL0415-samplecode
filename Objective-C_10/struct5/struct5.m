//struct5
#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
		
		struct student {
			char name[20];
			int score;
		};
		
		struct student stu = {"Mary", 90};
		
		NSLog(@"stu.name = %s", stu.name);
		NSLog(@"stu.score = %i", stu.score);
		
    }
    return 0;
}
