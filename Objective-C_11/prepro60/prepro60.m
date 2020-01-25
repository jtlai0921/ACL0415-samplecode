//prepro60
#import <Foundation/Foundation.h>

typedef struct{
    char name[20];
    int score;
} NODE;    

int main(int argc, const char * argv[])
{

    @autoreleasepool {
	
		NODE stu[3] = {{"John", 90}, {"Mary", 92}, {"Peter", 88}};
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
