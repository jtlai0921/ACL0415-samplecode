//Subject.m
#import "Subject.h"

@implementation Subject

@synthesize score;
// 印出科目內容
-(void) print
{
    NSLog(@"\nName : %@\nscore: %i", name, score);
}

// 設定科目名稱與分數
-(void) subjectName:(NSString *) n andScore:(int) s
{
    name = n;
    score = s;
}

// 將本身物件與科目temp比較，回傳NSComparisonResult
-(NSComparisonResult) compare: (Subject *) temp
{
    if (score > temp.score)
        return NSOrderedAscending;
    else if(score < temp.score)
        return NSOrderedDescending;
    else
        return NSOrderedSame;
}

@end
