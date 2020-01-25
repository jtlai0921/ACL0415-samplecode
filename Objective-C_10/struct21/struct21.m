//struct21
#import <Foundation/Foundation.h>


struct student {
    char name[20];
    int score;
};

void passOrDown(struct student *p);
int main(int argc, const char * argv[])
{

    @autoreleasepool {
		
		
		struct student stu = {"John", 90};
		
		NSLog(@"%s, %i", stu.name, stu.score);
		passOrDown(&stu);
		
    }
    return 0;
}

void passOrDown(struct student *p)
{
    if (p->score >= 60) {
        NSLog(@"Pass");
    }
    else {
        NSLog(@"Down");
    }
}
