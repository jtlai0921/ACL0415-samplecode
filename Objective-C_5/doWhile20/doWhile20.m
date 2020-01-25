//doWhile20
#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
		
		char ch='a';
		do {
			printf("%2c", ch);
			ch++;        
		} while (ch<='z');
		
		printf("\n");
    }
    return 0;
}
