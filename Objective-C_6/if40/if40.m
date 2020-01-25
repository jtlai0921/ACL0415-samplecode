//if40
#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
		
		int i, num, even=0, odd=0;
		
		for(i=1; i<=10; i++) {    
			NSLog(@"\n#%i: 請輸入一整數: ", i);
			scanf("%i", &num);
			if (num % 2 == 0) {
				even++;
			}
			else {
				odd++;
			}
			NSLog(@"偶數有: %i個, 奇數有: %i個", even, odd);
		}
		
	}
	return 0;
}
