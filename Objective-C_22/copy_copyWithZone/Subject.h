//copy_copyWithZone/Subject.h
#import <Cocoa/Cocoa.h>

@interface Subject : NSObject <NSCopying>{
    NSString *name;               // 科目名稱
    int score;                    // 科目分數
}
-(void) print;
-(void) subjectName: (NSString *) n andScore: (int) s;
@end
