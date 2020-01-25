//nestLoop70
#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
		
		int i, j;
		for(i=1; i<=9; i++) {
			for(j=1; j<=i; j++) {
				printf("%2d",j);
			}
			printf("\n");
		}
		
		for(i=8; i>=1; i--) {
			for(j=1; j<=i; j++) {
				printf("%2d",j);
			}
			printf("\n");
		}
		
    }
    return 0;
}
