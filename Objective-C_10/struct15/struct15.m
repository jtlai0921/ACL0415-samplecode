//struct15
#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
		
		struct student {
			char name[20];
			int score;
		};
		
		struct student *pstu;
		
		pstu = (struct student *) malloc(sizeof(struct student));
		
		NSLog(@"請輸入姓名: ");
		scanf("%s", pstu->name);
		
		NSLog(@"請輸入成績: ");
		scanf("%d", &pstu->score);
		
		NSLog(@"name = %s", pstu->name);
		NSLog(@"score = %i", pstu->score);
    }
    return 0;
}
