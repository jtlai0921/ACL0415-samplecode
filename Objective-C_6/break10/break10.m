8//break10
#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
    
		int i, num, total=0;
		
		for(i=1; i<=10; i++) {
			NSLog(@"\n#%i: 請輸入一整數: ", i);
			scanf("%i", &num);
			
			//判斷是否為偶數，若是，將其加總，否則結束迴圈
			if (num % 2 == 0) {            
				total += num;
			}
			else {
				break;
			}
		}
		NSLog(@"所有輸入的偶數之和 = %i", total);
		
    }
    return 0;
}
