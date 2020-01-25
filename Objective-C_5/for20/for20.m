//for20
#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
		
		char ch;
		for(ch='a'; ch<='z'; ch++) {
			printf("%2c", ch);
		}
		printf("\n");
    }
    return 0;
}
