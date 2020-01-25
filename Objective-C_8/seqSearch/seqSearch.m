//seqSearch
#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
		
		int data[] = {28, 33, 18, 8, 48, 56};
		int i, input;
		printf("陣列中的資料如下: ");
		for(i = 0; i < 6; i++) {
			printf("%d  ", data[i]);
		}
		printf("\n\n");
		
		printf("請輸入您要找的資料: ");
		scanf("%d", &input);
		NSLog(@"找尋中.....");
		
		//Sequential search
		for(i = 0; i < 6; i++) {
			NSLog(@"第%2d次找尋的資料是%d", i+1, data[i]);
			if(input == data[i]){
				break;
			}
		}
		
		if(i < 6) {
			NSLog(@"找到, %d 是在陣列的第%d個元素!!!", input, i+1);
		}
		else {
			NSLog(@"%d 找不到!!!", input);
		}
		
    }
    return 0;
}
