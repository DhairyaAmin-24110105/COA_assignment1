#include <stdio.h>
#include <stdlib.h>
#include <time.h>


int main(void)
{
    int N;
    if (scanf("%d", &N) != 1) {
        fprintf(stderr, "Invalid input\n");
        return 1;
    }

    int **A = malloc(N * sizeof(int *));
    int **B = malloc(N * sizeof(int *));
    int **C = malloc(N * sizeof(int *));

    for (int i=0; i<N; i++){
        A[i] = malloc(N * sizeof(int));
        B[i] = malloc(N * sizeof(int));
        C[i] = malloc(N * sizeof(int));
        for (int j=0; j<N; j++){
            A[i][j] = 8;
            B[i][j] = 9;
            C[i][j] = 0;
        }
    }
    struct timespec start,end;
    clock_gettime(CLOCK_MONOTONIC ,&start);
    // Matrix multiplication
    for (int i = 0; i < N; i++) {
        for (int j = 0; j < N; j++) {
            for (int k = 0; k < N; k++) {
                C[i][j] += A[i][k] * B[k][j];
            }
        }
    }
    clock_gettime(CLOCK_MONOTONIC,&end);
    double elapsed=(end.tv_sec - start.tv_sec) + ((end.tv_nsec - start.tv_nsec)/1e9);
    printf("Time taken: %lf seconds\n",elapsed);

    return 0;
}
