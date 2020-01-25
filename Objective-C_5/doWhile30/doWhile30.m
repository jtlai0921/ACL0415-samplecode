//doWhile30
#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
		
		int ch=65;
		do {
			printf("%2c", ch);
			ch++;
		} while (ch<=90); 
		
		printf("\n\n");
		
		ch=97;
		do {        
			printf("%2c", ch);
			ch++;         
		} while(ch<=122);
		
		printf("\n");
    }
    return 0;
}
