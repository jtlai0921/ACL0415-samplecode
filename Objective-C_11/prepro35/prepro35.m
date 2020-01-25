//prepro35
#import <Foundation/Foundation.h>

#ifndef MAC
#define OS "MAC_OS_X_VERSION_10_0"
#else
#define OS "Windows_7"
#endif

int main(int argc, const char * argv[])
{

    @autoreleasepool {
		
		NSLog(@"My notebook OS is %s", OS);
    }
    return 0;
}
