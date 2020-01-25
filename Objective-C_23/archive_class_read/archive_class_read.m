// archive_class_read
#import <Foundation/Foundation.h>
#import "Subject.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
    
		NSString *path = [NSHomeDirectory() stringByAppendingPathComponent: @"Subjects.plist"];
		NSMutableArray *SubArr;
		
		// 由檔案path取回解碼
		SubArr = [NSKeyedUnarchiver unarchiveObjectWithFile: path];
		for(Subject *temp in SubArr)
			[temp print];
		
    }
    return 0;
}
