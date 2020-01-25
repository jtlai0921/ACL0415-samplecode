//copy_copyWithZone/Subject.m
#import "Subject.h"

@implementation Subject

// 設定科目名稱與分數
-(void) subjectName:(NSString *) n andScore:(int) s
{
    name = n;
    score = s;
}

// 印出科目內容
-(void) print
{
    NSLog(@"name的位址: %lx", (unsigned long)&name);
    NSLog(@"name裏面所存放的位址: %lx", (unsigned long)name);
    NSLog(@"score的位址: %lx", (unsigned long)&score);
    NSLog(@"Name : %@\nscore: %i", name, score);
}

// 進行複製必須實作的方法
-(id) copyWithZone:(NSZone *)zone
{
    Subject *tempSubject = [[Subject allocWithZone: zone] init];
    [tempSubject subjectName: name andScore: score];
    return tempSubject;
}

@end
