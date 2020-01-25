//struct22
#import <Foundation/Foundation.h>

struct student {
    char name[20];
    double score;
};

void adjust(struct student    *p);

int main(int argc, const char * argv[])
{

    @autoreleasepool {
		struct student stu[3] = {{"John", 36}, {"Mary", 32}, {"Peter", 55}};
		int i; 
		
		adjust(stu);
		
		NSLog(@"經過調整後的成績: ");
		for(i=0; i<3; i++) {
			NSLog(@"\n第%i位同學: ", i+1);
			NSLog(@"%s", stu[i].name);
			NSLog(@"%.2f", stu[i].score);
		}
    }
    return 0;
}


void adjust(struct student *p)
{ 
    int k;
    for(k=0; k<3; k++) {
        p->score = sqrt(p->score) * 10;
        p++;
    }
}
