//struct25
#import <Foundation/Foundation.h>

int main()
{
    struct node {
        char name[10];
        int score;
        struct node *next;
    };
    struct node *p, *q, *r, *current;
    
    p = (struct node *) malloc(sizeof(struct node));
    NSLog(@"請輸入姓名: ");
    scanf("%s", p->name);
    NSLog(@"請輸入成績: ");
    scanf("%i", &p->score);
    p->next = NULL;
    
    q = (struct node *) malloc(sizeof(struct node));
    NSLog(@"\n請輸入姓名: ");
    scanf("%s", q->name);
    NSLog(@"請輸入成績: ");
    scanf("%i", &q->score);
    q->next = p;
    
    r = (struct node *) malloc(sizeof(struct node));
    NSLog(@"\n請輸入姓名: ");
    scanf("%s", r->name);
    NSLog(@"請輸入成績: ");
    scanf("%i", &r->score);
    r->next = q;
    
    current = r;
    NSLog(@"\n");
    while (current != NULL) {
		NSLog(@"%s %d\n", current->name, current->score);
		current = current->next;
    }
	
	return 0;
}
