//fun5
#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
		
		int i, j;
		
		for(i=1; i<=48; i++) {
			printf("*");
		}
		printf("\n");
		
		for(i=1; i<=9; i++) {
			for(j=1; j<=9; j++){
				printf("%5i", i*j);
			}
			printf("\n");
		}
		
		for(i=1; i<=48; i++) {
			printf("*");
		}
		printf("\n");
		
    }
    return 0;
}
