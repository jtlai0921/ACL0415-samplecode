//Subject.h
#import <Cocoa/Cocoa.h>


@interface Subject : NSObject {
    NSString *name;       // 科目名稱
    int score;            // 科目分數
}

@property int score;
-(void) print;
-(NSComparisonResult) compare:(Subject *) temp;
-(void) subjectName: (NSString *) n andScore: (int) s;
@end
