//binSearch
#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
		
		int data[10] = {8, 18, 28, 38, 48, 58, 68, 78, 88, 98};
		int i, left = 0, right = 9, mid, cnt = 0, input, ok = 0;
		
		printf("排序後陣列的資料如下: ");
		for(i = 0; i < 10; i++) {
			printf("%d  ", data[i]);
		}
		printf("\n");

		printf("請輸入欲尋找的資料: ");
		scanf("%d", &input);

		printf("找尋中.....\n");

		//Binary search
		mid = (left + right) / 2;   //從中間的元素開始找
		while(left <= right && ok == 0) {
			printf("第%2d次找到的資料是%d!\n", ++cnt, data[mid]);
			if(data[mid] > input) {
				right = mid - 1;
				printf(" ---> 欲尋找的資料%i小於%i\n", input, data[mid]);
			}
			else if(data[mid] < input) {
				left = mid + 1;
				printf(" ---> 欲尋找的資料%i大於%i\n", input, data[mid]);
			}
			else {
				printf("找到, 欲尋找的資料%i是陣列第%d個元素!\n", input, mid);
				ok = 1;
			}
			mid = (left + right)/2;
		}
		if(ok == 0){
			printf("欲尋找的資料%i找不到!\n", input);
		}

	}
	return 0;
}
