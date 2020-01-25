//fun20
#import <Foundation/Foundation.h>

int sum(int);

int main(int argc, const char * argv[])
{

    @autoreleasepool {
		
		int total, over=100;
		
		total = sum(over);
		
		NSLog(@"1加到%i的總和為: %i", over, total);
    }
    return 0;
} 

int sum(int n)
{
    int i, tot;    
    for(i=1; i<=n; i++) {
        tot += i;
    }
    return tot;
}
