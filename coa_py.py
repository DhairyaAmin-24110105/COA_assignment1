import timeit
n=int(input())
A=[[9]*n for _ in range(n)]
B=[[8]*n for _ in range(n)]
C=[[0]*n for _ in range(n)]

def multiply_only():
    for i in range(n):
        for j in range(n):
            for k in range(n):
                C[i][j] += A[i][k] * B[k][j]
t = timeit.timeit(multiply_only, number=1)
print("Multiplication time:", t, "seconds")
