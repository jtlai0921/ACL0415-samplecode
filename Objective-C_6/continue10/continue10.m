//continue10
#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
    
		int i, num, total=0;
		
		for(i=1; i<=10; i++) {
			NSLog(@"\n#%i: 請輸入一整數: ", i);
			scanf("%i", &num);
			
			//判斷是否為偶數，若是，則加總，否則繼續迴圈的更新敘述
			if (num % 2 == 0) {            
				total += num;
			}
			else {
				continue;
			}
		}
		NSLog(@"您輸入的偶數之總和為 %i", total);
		
    }
    return 0;
}
