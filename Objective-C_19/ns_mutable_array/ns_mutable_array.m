//ns_mutable_array
#import <Foundation/Foundation.h>
#import "Subject.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
		
		// 初始化陣列與科目物件
		NSMutableArray *mArr = [[NSMutableArray alloc] init];
		Subject *sub1 = [[Subject alloc] init];
		Subject *sub2 = [[Subject alloc] init];
		Subject *sub3 = [[Subject alloc] init];
		Subject *sub4 = [[Subject alloc] init];
		
		// 設定科目名稱與分數
		[sub1 subjectName: @"Objective-C" andScore: 95];
		[sub2 subjectName: @"JAVA" andScore: 85];
		[sub3 subjectName: @"C#" andScore: 90];
		[sub4 subjectName: @"C++" andScore: 99];
		
		// 將科目加入陣列
		[mArr addObject: sub1];
		[mArr addObject: sub2];
		[mArr addObject: sub3];
		
		// 印出陣列內容
		[mArr makeObjectsPerformSelector: @selector(print)];
		
		// 刪除科目2並加入科目4
		[mArr removeObject: sub2];
		[mArr addObject: sub4];
		NSLog(@"\n刪除第二個元素，再加入第四個元素...");
		
		NSLog(@"\nbefore sorted...");
		[mArr makeObjectsPerformSelector: @selector(print)];
		
		// 指定以科目的方法"compare:"，將陣列內容加以排序
		[mArr sortUsingSelector: @selector(compare:)];
		
		NSLog(@"\nafter sorted...");
		[mArr makeObjectsPerformSelector: @selector(print)];
    }
    return 0;
}
