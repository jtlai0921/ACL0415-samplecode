//while40
#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
		
		int ch=65;
		while (ch<=90) {
			printf("%2c", ch);
			ch++;
		}
		
		printf("\n\n");;
		ch=97;
		while (ch<=122) {
			printf("%2c", ch);
			ch++;
		}
		
		printf("\n");
    }
    return 0;
}
