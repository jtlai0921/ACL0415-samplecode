//ns_dictionary
#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
    
		// 建立key與value陣列
		NSArray *key = [NSArray arrayWithObjects: @"小叮噹", @"大雄", @"小夫", @"胖虎", 
						nil];
		NSArray *object = [NSArray arrayWithObjects: @"有百寶袋的機器貓", @"心地善良的小孩", 
						   @"常有新奇玩具的小朋友", @"常被媽媽打的孩子王", nil];
		
		// 建立詞典物件
		NSDictionary *dic = [NSDictionary dictionaryWithObjects: object forKeys: key];
		
		// 印出目前元素的數量
		NSLog(@"目前元素數量: %i", [dic count]);
		
		// 以dic中任意順序的key值，找出對應的entry
		for(NSString *tempKey in dic)
			NSLog(@"\"%@\"的特色是\"%@\"", tempKey, [dic objectForKey: tempKey]);
		
    }
    return 0;
}
