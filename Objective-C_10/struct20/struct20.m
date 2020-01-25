//struct20
#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
		
		struct student {
			char name[20];
			int score;
		};
		
		struct student stu[3] = {{"John", 90}, {"Mary", 92}, {"Peter", 88}};
		int i; 
		
		NSLog(@"共有下列同學: ");
		for(i=0; i<3; i++) {
			NSLog(@"\n第%i位同學: ", i+1);
			NSLog(@"%s", stu[i].name);
			NSLog(@"%i", stu[i].score);
		}
		
    }
    return 0;
}
