// archive_class_write
#import <Foundation/Foundation.h>
#import "Subject.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
		
		NSString *path = [NSHomeDirectory() stringByAppendingPathComponent: @"Subjects.plist"];
		NSMutableArray *SubArr = [[NSMutableArray alloc] init];
		
		Subject *s1 = [[Subject alloc] init];
		Subject *s2 = [[Subject alloc] init];
		Subject *s3 = [[Subject alloc] init];
		
		// 初始內容
		[s1 setSubject: @"C" hours: 3 score: 98];
		[s2 setSubject: @"C++" hours: 3.5 score: 90];
		[s3 setSubject: @"Objective-C" hours: 3.5 score: 92];
		
		[SubArr addObject: s1];
		[SubArr addObject: s2];
		[SubArr addObject: s3];
		
		// 編碼寫入檔案path
		if([NSKeyedArchiver archiveRootObject: SubArr toFile: path] == YES)
			NSLog(@"檔案寫入成功...");
    }
    return 0;
}
