//ns_mutable_set
#import <Foundation/Foundation.h>
// 定義整數值int轉換為物件NSNumber
#define intNum(n) [NSNumber numberWithInt: n]
// 定義showline印出換行字元
#define showline printf("\n")
// 定義show印出set所有內容
#define show(set) for(NSNumber *i in set) printf("%d ", [i intValue]); showline;

int main(int argc, const char * argv[])
{

    @autoreleasepool {
		
		// 配置並初始化set與mutable set
		NSMutableSet *set1 = [[NSMutableSet alloc] init];
		NSMutableSet *set2 = [NSMutableSet setWithObjects: intNum(1), intNum(4),
							  intNum(6), nil];
		NSSet *set3 = [NSSet setWithObjects: intNum(3), intNum(5), intNum(7),
					   intNum(9), nil];
		
		// 將三個NSNumber物件加入mutableSet"set1"
		[set1 addObject: intNum(3)];
		[set1 addObject: intNum(4)];
		[set1 addObject: intNum(8)];
		
		// 分別印出三個set的內容
		NSLog(@"set1: ");
		show(set1);
		NSLog(@"set2: ");
		show(set2);
		NSLog(@"set3: ");
		show(set3);
		
		// 將set2所有的物件存入set1，並且印出set1
		NSLog(@"set1 unionSet: set2");
		[set1 unionSet: set2];
		show(set1);
		
		// 刪除set1中，所有set3儲存的物件，並且印出set1
		NSLog(@"set1 minusSet: set3");
		[set1 minusSet: set3];
		show(set1);
		
		// 僅保留set1中，與set2共有的物件，並且印出set1
		NSLog(@"set1 intersectSet: set2");
		[set1 intersectSet: set2];
		show(set1);
		

    }
    return 0;
}
