//struct10
#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
    
		struct student {
			char name[20];
			int score;
		};
		
		struct student stu, *pstu;
		pstu = &stu;
		
		NSLog(@"請輸入姓名: ");
		scanf("%s", stu.name);
		
		NSLog(@"請輸入成績: ");
		scanf("%d", &stu.score);
		NSLog(@"stu.name = %s", stu.name);
		NSLog(@"stu.score = %i", stu.score);
		
		//利用指標存取
		NSLog(@"stu.name = %s", pstu->name);
		NSLog(@"stu.score = %i", pstu->score);
    }
    return 0;
}
