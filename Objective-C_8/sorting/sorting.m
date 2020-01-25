//sorting 
#import <Foundation/Foundation.h>

void bubble_sort(int data[], int n);

int main(int argc, const char * argv[])
{

    @autoreleasepool {
	
		int data[] = {58, 48, 38, 28, 18};
		int i;
		
		//印出未排序的資料
		printf("Unsorted data : ");
		for(i = 0; i < 5; i++) {
			printf("%4d", data[i]);
		}
		printf("\n\n");
		
		
		//氣泡排序
		bubble_sort(data, 5);
		
		//印出排序後的資料
		printf("\nSorted data : ");
		for(i = 0; i < 5; i++) {
			printf("%4d", data[i]);
		}
		printf("\n");
    }
    return 0;
}

void bubble_sort(int data[], int n)
{
    int i, j, k, temp, flag;
    
    //共有n-1個Pass
    for(i = 0; i < n-1; i++)  {
        flag = 0; //用來輔助判斷資料是否有對調
        //共有n-i-1個Compare
        for(j = 0; j < n-i-1; j++) {
            if(data[j] > data[j+1]) {
				flag = 1;             //資料對調時，將flag設為1
				//將資料加以對調
				temp = data[j];
				data[j] = data[j+1];
				data[j+1] = temp;
            }
        }        
        
        printf("After #%d pass: ", i+1);
        for(k = 0; k < n; k++) {
            printf("%4d", data[k]);
        }
        printf("\n");
        
        // 當flag !=1 表示資料沒有對調，也表示此時資料已排序 
        if(flag != 1) {
			break;
        }
	}
}
