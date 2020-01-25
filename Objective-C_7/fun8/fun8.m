//fun8
#import <Foundation/Foundation.h>

void printStar();

int main(int argc, const char * argv[])
{

    @autoreleasepool {
		int i, j;
		
		printStar(); 	
		
		for(i=1; i<=9; i++) {
			for(j=1; j<=9; j++) {
				printf("%5i", i*j);
			}
			printf("\n");
		}
		
		printStar();
		
    }
    return 0;
}

void printStar()
{
    int i;
	
    for(i=1; i<=48; i++){
        printf("*");
    }
    printf("\n");
}
