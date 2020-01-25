//self 
#import <Foundation/Foundation.h>

@interface Student : NSObject
{
    int chinese;
    int english;
    int math;
}

-(void) setChinese: (double) a setEnglish: (double) b setMath: (double) c;
-(void) average;
-(void) convertGrade: (double) g;

@end

@implementation Student
-(void) setChinese: (double) a setEnglish: (double) b setMath: (double) c;
{
    chinese = a;
    english = b;
    math = c;
    NSLog(@"Chinese = %.2f, English = %.2f, Mathematic = %.2f", 
		  chinese, english, math);
}

-(void) average
{
    double aver;
    aver = (chinese + english + math)/3;
    NSLog(@"average = %.2f", aver);
    [self convertGrade: aver];
}

-(void) convertGrade: (double) g
{
    if (g >= 85)
        NSLog(@"Your grade is A");
    else if(g >=75)
        NSLog(@"Your grade is B");
    else if(g > 65)
        NSLog(@"Your grade is C");
    else 
        NSLog(@"Your grade is D");
}

@end

int main(int argc, const char * argv[])
{

    @autoreleasepool {
		Student *stu1 = [[Student alloc]init];
		Student *stu2 = [[Student alloc]init];
		
		NSLog(@"Student John:");
		[stu1 setChinese:90 setEnglish:80 setMath:70];
		[stu1 average];	
		NSLog(@"Student Mary:");
		[stu2 setChinese:95 setEnglish:85 setMath:90];
		[stu2 average];	
    }
    return 0;
}
