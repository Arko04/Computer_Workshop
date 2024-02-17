#include <stdio.h>
#include <stdlib.h>
#include <time.h>
const int SIZE = 20;
int main()
{
    srand(time(NULL));
    char str[SIZE], inp[SIZE];
    
    for (int i = 0; i < SIZE; i++)
    {
        str[i] = 'a' + (rand() % 26);
        printf("%c",str[i]);
    }
    float accuracy = 0;
    printf("\nPlease enter 20 characters:\n");
    time_t start_time = time(NULL);
    for (int i = 0; i < SIZE; i++)
    {
        inp[i] = getchar();
        accuracy += (float)(inp[i] == str[i])/SIZE;
    }
    time_t end_time = time(NULL);
    time_t difftime = end_time - start_time;
    printf("Your accuracy was: %.2lf%%\nYour speed was: %lds\n",accuracy * 100, difftime);
    return 0;
}