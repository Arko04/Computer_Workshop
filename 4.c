#include <stdio.h>
#include <stdlib.h>

typedef struct Node
{
    int val;
    struct Node *next;

}Node;
Node* head;

int pop()
{
    if(head->next == NULL)
    {
        printf("can't pop\n");
        return 0;
    }

    Node* next = head->next->next;
    int val = head->next->val;
    free(head->next);
    head->next = next;
    return val;
}
int top()
{
    return head->val;
}
int push(int val)
{
    Node* node = (Node*)malloc(sizeof(Node));
    node->val = val;
    Node* next = head->next;
    head->next = node;
    node->next = next;
    return 1;
}
int display()
{ 
    for(Node* cur = head->next; cur != NULL; cur = cur->next)
    {
        printf("%d ", cur->val);
    }
    printf("\n");
    return 1;
}
int main(void)
{
    head = (Node*)malloc(sizeof(Node));
    display();
    push(1);
    display();
    push(2);
    display();
    push(3);
    display();
    top();
    display();
    pop();
    display();
    pop();
    display();
    return 0;
}