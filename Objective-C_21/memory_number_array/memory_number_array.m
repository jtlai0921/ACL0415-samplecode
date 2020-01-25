//memory_number_array
#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
    
    NSNumber *number1 = [NSNumber numberWithInt: 50];
    NSNumber *number2;
    NSMutableArray *arr = [[NSMutableArray alloc] init];
    
    // 印出兩數目前的retain count
    NSLog(@"retainCount(number1): %lx", (unsigned long)[number1 retainCount]);
     
    // 加入陣列後，number1的retain count會加1
    [arr addObject: number1];
    NSLog(@"\nnumber1加入陣列後...");
    NSLog(@"retainCount(number1): %lx", (unsigned long)[number1 retainCount]);
    
    // 若單純指定number1的位址給number2，則number1的retain count不會有變化
    number2 = number1;
    NSLog(@"\nnumber1指定給number2後...");
    NSLog(@"retainCount(number1): %lx", (unsigned long)[number1 retainCount]);
    
    // 若number1從陣列移除後，retain count會減1
    [arr removeObject: number1];
    NSLog(@"\n從陣列移除後...");
    NSLog(@"retainCount(number1): %lx", (unsigned long)[number1 retainCount]);
    
    // 將number1的retain count加1
    [number1 retain];
    NSLog(@"\nnumber1 retain後...");
    NSLog(@"retainCount(number1): %lx", (unsigned long)[number1 retainCount]);
    
    // pool drain後，配置時被加入的number1，其retain count會被減1
    [pool drain];
    NSLog(@"\npool drain後...");
    NSLog(@"retainCount(number1): %lx", (unsigned long)[number1 retainCount]);
    
    // 記得要完整的將number1的記憶體回收
    [number1 release];
    
    return 0;
}
