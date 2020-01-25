//ns_mutable_dictionary
#import <Foundation/Foundation.h>
#define intNum(n) [NSNumber numberWithInt: n]

int main(int argc, const char * argv[])
{

    @autoreleasepool {
		
		// 建立一個可變更的詞典物件
		NSMutableDictionary *dic = [[NSMutableDictionary alloc] init];
		
		// 依續加入四筆鍵值
		[dic setObject: intNum(9) forKey: @"Jerry"];
		[dic setObject: intNum(8) forKey: @"Mark"];
		[dic setObject: intNum(5) forKey: @"Tom"];
		[dic setObject: intNum(7) forKey: @"Peter"];
		
		// 印出指定鍵值對應的內容
		NSLog(@"Peter的考績分數為: %i", [[dic objectForKey: @"Peter"] intValue]);
		NSLog(@"Jerry的考績分數為: %i", [[dic objectForKey: @"Jerry"] intValue]);
		
		// 印出移除dic其中一筆資料之前後的總數
		NSLog(@"dic的內容在移除一筆前的總數: %i", [dic count]);
		[dic removeObjectForKey: @"Tom"];
		NSLog(@"dic的內容在移除一筆後的總數: %i", [dic count]);    
    
    }
    return 0;
}
