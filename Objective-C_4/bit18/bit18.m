//bit18
#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
    
		unsigned short int b1=10, b2=20;
		unsigned short int temp;
		
		NSLog(@"b1=%i, b2=%i", b1, b2);
		
		//兩數對調的動作
		temp=b1;
		b1=b2;
		b2=temp;
		
		NSLog(@"After swap....");
		NSLog(@"b1=%i, b2=%i", b1, b2);
	
    }
    return 0;
}  
