//nestLoop20
#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
		
		int i, j;
		for(i=1; i<=9; i++) {
			for(j=1; j<=9; j++) {
				printf("%d * %d = %2d\n",i, j, i*j);
			}
		}
    
    }
    return 0;
}
