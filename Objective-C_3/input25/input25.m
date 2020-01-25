//input25
#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
    
		int i, j;
		
		NSLog(@"請輸入一整數值: ");
		scanf("%i", &i);
		
		NSLog(@"請輸入一整數值: ");
		scanf("%d", &j);
		
		NSLog(@"i=%d, j=%d", i, j);
		NSLog(@"i=%i, j=%i", i, j);
		
    }
    return 0;
}
