// archive_class_write/Subject.h
#import <Cocoa/Cocoa.h>

@interface Subject : NSObject <NSCoding>{
    NSString *name;
    double hours;
    int score;
}

-(void) setSubject: (NSString *)tempName hours: (double)tempHours score: (int) tempScore;
-(void) print;

@end
