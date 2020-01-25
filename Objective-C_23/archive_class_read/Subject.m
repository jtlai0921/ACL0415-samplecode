// archive_class_write/Subject.m
#import "Subject.h"

@implementation Subject

-(void) setSubject: (NSString *)tempName hours: (double)tempHours score: (int) tempScore
{
    name = tempName;
    hours = tempHours;
    score = tempScore;
}

-(void) print
{
    NSLog(@"\nSubject: %@, Hours: %g, Score: %i", name, hours, score);
}

// 基本資料型態與物件型態，編碼與解碼方式
- (void)encodeWithCoder:(NSCoder *)aCoder
{
    [aCoder encodeObject:name forKey: @"Subject"];
    [aCoder encodeDouble:hours forKey: @"Hours"];
    [aCoder encodeInt:score forKey: @"Score"];
}

- (id)initWithCoder:(NSCoder *)aDecoder
{
    name = [aDecoder decodeObjectForKey: @"Subject"];
    hours = [aDecoder decodeDoubleForKey: @"Hours"];
    score = [aDecoder decodeIntForKey: @"Score"];
    return self;
}
@end
