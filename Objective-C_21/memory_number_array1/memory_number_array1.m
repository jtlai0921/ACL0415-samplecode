//momory_number_array1
#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
    
    // 以alloc的方式配置number
    NSNumber *number = [[NSNumber alloc] initWithInt: 50];
    NSLog(@"以alloc配置number後...");
    NSLog(@"retainCount(number): %lx", (unsigned long)[number retainCount]);
    
    // pool drain後無影響
    [pool drain];
    NSLog(@"\npool drain後...");
    NSLog(@"retainCount(number): %lx", (unsigned long)[number retainCount]);
    
    pool = [[NSAutoreleasePool alloc] init];
    
    // 呼叫autorelease
    [number autorelease];
    NSLog(@"\nnumber加入autorelease pool後...");
    NSLog(@"retainCount(number): %lx", (unsigned long)[number retainCount]);
    
    // 為了防止number被回收，先將它retain
    [number retain];
    NSLog(@"\n將number retain後...");
    NSLog(@"retainCount(number): %lx", (unsigned long)[number retainCount]);
    
    [pool drain];
    NSLog(@"\npool drain後...");
    NSLog(@"retainCount(number): %lx", (unsigned long)[number retainCount]);
    
    pool = [[NSAutoreleasePool alloc] init];
    
    // 為了防止number被回收，先將它retain
    [[number retain] retain];
    [[number autorelease] autorelease];
    NSLog(@"\n將number執行兩次retain, 並且兩次autorelease後...");
    NSLog(@"retainCount(number): %lx", (unsigned long)[number retainCount]);
    
    [pool drain];
    NSLog(@"\npool drain後...");
    NSLog(@"retainCount(number): %lx", (unsigned long)[number retainCount]);
    
    [number release];
    
    return 0;
}
