//prepro40
#import <Foundation/Foundation.h>

#define MAC
#if defined(MAC)
#define OS "MAC_OS_X_VERSION_10_0"
#elif defined(WINDOWS)
#define OS "Windows_7"
#endif

int main(int argc, const char * argv[])
{

    @autoreleasepool {
		
		NSLog(@"My notebook OS is %s", OS);
    }
    return 0;
}
