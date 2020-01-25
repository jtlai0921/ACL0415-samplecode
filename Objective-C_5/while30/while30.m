//while30
#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
		
		char ch='a';
		while(ch<='z') {
			printf("%2c", ch);
			ch++;
		}
		printf("\n");
    }
    return 0;
}
