//bit10
#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
    
		unsigned short int b1=29, mask;
		
		//判斷b1的右邊4個位元，哪些位元是1
		mask=0x000f;    
		NSLog(@"%i & %x = %i", b1, mask, b1 & mask);
		
		//判斷b1第4個到第7個位元，哪些位元是1
		mask = 0x00f0;
		NSLog(@"%i & %x = %i", b1, mask, b1 & mask);
		
		//將b1的右邊4個位元設為1
		mask=0x000f;    
		NSLog(@"%i | %x = %i", b1, mask, b1 | mask);
		
		//將b1的第4個到第7個位元設為1
		mask = 0x00f0;
		NSLog(@"%i | %x = %i", b1, mask, b1 | mask);
	
    }
    return 0;
}
