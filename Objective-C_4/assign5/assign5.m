//assign5
#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
		
		int num = 100;
		
		NSLog(@"num=%i", num);
		
		num += 2;
		NSLog(@"加2後");
		NSLog(@"num=%i", num);
		
		num -= 2;
		NSLog(@"減2後");
		NSLog(@"num=%i", num);
		
		num *= 2;
		NSLog(@"乘2後");
		NSLog(@"num=%i", num);
		
		num /= 2;
		NSLog(@"除2後");
		NSLog(@"num=%i", num);
	
    }
    return 0;
}
