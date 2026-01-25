import timeit
import numpy as np
n = int(input())
A = np.ones((n,n))
B = np.ones((n,n))
A=A*9
B=B*8
C = np.zeros((n,n))
def multiply_only():
    np.dot(A, B,out=C)
t = timeit.timeit(multiply_only, number=1)
print("Multiplication time:", t, "seconds")