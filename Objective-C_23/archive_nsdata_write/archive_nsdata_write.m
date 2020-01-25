// archive_nsdata_write
#import <Foundation/Foundation.h>
#import "Subject.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
    
		NSString *path = [NSHomeDirectory() stringByAppendingPathComponent: @"data.plist"];
		Subject *sub1 = [[Subject alloc] init];
		Subject *sub2 = [[Subject alloc] init];
		NSMutableData *data = [[NSMutableData alloc] init];
		NSKeyedArchiver *archiver = [[NSKeyedArchiver alloc] initForWritingWithMutableData: data];
		
		[sub1 setSubject: @"Java" hours: 4 score: 80];
		[sub2 setSubject: @"Python" hours: 3 score: 82];
		[archiver encodeObject: sub1 forKey: @"Subject1"];
		[archiver encodeObject: sub2 forKey: @"Subject2"];
		[archiver finishEncoding];
		
		if([data writeToFile: path atomically:YES] == YES)
			NSLog(@"檔案寫入成功");
		else
			NSLog(@"檔案寫入失敗");
	}
    return 0;
}
