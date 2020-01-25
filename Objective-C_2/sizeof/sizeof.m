//sizeof 
#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
		
		NSLog(@"各種資料型態所佔的byte數，如下所示:");
		NSLog(@"int: %i", sizeof(int));
		NSLog(@"float: %i", sizeof(float));
		NSLog(@"double: %i", sizeof(double));
		NSLog(@"char: %i", sizeof(char));
		
		NSLog(@"short int: %i", sizeof(short int));
		NSLog(@"long int: %i", sizeof(long int));
		NSLog(@"long double: %i", sizeof(long double));
		
		NSLog(@"unsigned int: %i", sizeof(unsigned int));
		NSLog(@"unsinged short int: %i", sizeof(unsigned short int));
		NSLog(@"unsinged long int: %i", sizeof(unsigned long int));
		
    
    }
    return 0;
}
