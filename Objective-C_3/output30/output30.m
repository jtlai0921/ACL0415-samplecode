//output30
#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
    
		int i =100;
		double d=123.456;
		char ch = 'c';
		
		NSLog(@"i=|%8i|", i);
		NSLog(@"i=|%-8i|", i);
		
		NSLog(@"d=|%8.2f|", d);
		NSLog(@"d=|%-8.2f|", d);
		
		NSLog(@"ch=|%6c|", ch);
		NSLog(@"ch=|%-6c|", ch);
		
    }
    return 0;
}
