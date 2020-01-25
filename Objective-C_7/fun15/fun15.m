//fun15
#import <Foundation/Foundation.h>

void printStar(int);
void multiplyTable();

int main(int argc, const char * argv[])
{

    @autoreleasepool {
		
		printStar(50);
		multiplyTable();
		printStar(50);
		
    }
    return 0;
}

void printStar(int n)
{
    int i;
    
    for(i=1; i<=n; i++){
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
