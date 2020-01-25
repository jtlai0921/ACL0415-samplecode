//fun10
#import <Foundation/Foundation.h>

void printStar();
void multiplyTable();

int main(int argc, const char * argv[])
{

    @autoreleasepool {
		
		printStar();
		multiplyTable();
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

void multiplyTable()
{
    int i, j;
	
    for(i=1; i<=9; i++) {
        for(j=1; j<=9; j++) {
            printf("%5i", i*j);
        }
        printf("\n");
    }
}
