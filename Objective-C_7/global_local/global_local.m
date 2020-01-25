//global_local
#import <Foundation/Foundation.h>

void callFunA();
void callFunB();

int main(int argc, const char * argv[])
{

    @autoreleasepool {
		
		int i=100;
		
		NSLog(@"local variable in main() :");
		NSLog(@"i=%i", i);
		
		callFunA();
		callFunB();
    
    }
    return 0;
}

int i=300;
void callFunA()
{
    int i=200;
	
    NSLog(@"Local variable in callFunA(): ");
    NSLog(@"i=%i", i);
}

void callFunB()
{
	NSLog(@"Global variable: ");
    NSLog(@"i=%i", i);
}
