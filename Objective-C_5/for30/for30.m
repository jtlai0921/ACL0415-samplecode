//for30
#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
		
		char ch;
		for(ch=65; ch<=90; ch++) {
			printf("%2c", ch);
		}
		
		printf("\n\n");
		for(ch=97; ch<=122; ch++) {
			printf("%2c", ch);
		}
		
		printf("\n");
    }
    return 0;
}
