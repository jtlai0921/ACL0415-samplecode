//nestLoop10
#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
		
		int i, j;
		for(i=1; i<=3; i++) {
			printf("i=%i\n", i);
			printf("j=");
			for(j=1; j<=9; j++) {
				printf("%2d",j);
		}
			printf("\n\n");
		}
		
    }
    return 0;
}
