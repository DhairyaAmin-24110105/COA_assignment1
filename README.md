# ES336 Assignment 1 #
## Name: Dhairya Apoorva Amin ##
## Roll no: 24110105 ##

---

### Q1 ###
### Ans ###
#### Using the file `demo.c`, the computations were carried out with N = 1024, N = 1500, and N = 1800. ####
#### The results are as follows: ####

#### Execution Time taken: -O0 (default) --->
- N = 1024 → 3.662090 seconds  
- N = 1500 → 10.726606 seconds  
- N = 1800 → 24.359762 seconds  

#### Using Time Command for N=1024
- Time taken: 3.627674 seconds

- real    0m5.328s
- user    0m3.631s
- sys     0m0.010s

#### Intermediate file: demo.i ####  
#### Assembly file: demo.s ####  

**Observations:**
- The `.i` file contains expanded headers and macro substitutions.
- The `.s` file contains straightforward triple nested loops with no loop unrolling or vectorization.
- Performance is limited due to lack of compiler optimizations.

---

### Q2 ###
### Ans ###
Using the file `coa_py.py`, the computations were carried out with N = 1024, N = 1500, and N = 1800.  
The results are as follows:

#### Execution Time taken using timeit module: Python (for loop) --->
- N = 1024 → 100.42602109999996 seconds  
- N = 1500 → 341.58655573400006 seconds  
- N = 1800 → 611.1124434200001 seconds

#### Using Time Command for N=1024
-real    1m44.383s
-user    1m41.775s
-sys     0m0.027s

**Observations:**
- Python is significantly slower due to interpreter overhead, dynamic typing, and lack of vectorization.
- The nested loop approach scales poorly for large matrix sizes.

---

### Q3 ###
### Ans ###
The execution times of the C and Python programs show a drastic difference.

**Key reasons:**
- C is compiled into native machine code and benefits from optimized memory access and register usage.
- Python executes loops via an interpreter, resulting in heavy overhead per iteration.
- The `time` command measures total process runtime, while `timespec` (C) and `timeit` (Python) measure only the computation portion.

**Conclusion:**
- C outperforms Python by approximately 30×–200× for large matrix sizes.
- Python is unsuitable for compute-heavy nested loops without external libraries.

---

### Q4 ###
### Ans ###
Using the file `coa_numpy.py`, the computations were carried out with N = 1024, N = 1500, and N = 1800.  
The results are as follows:

Execution Time taken: NumPy (built-in matrix multiplication) --->
- N = 1024 → 0.397075891 seconds  
- N = 1500 → 1.493048 seconds  
- N = 1800 → 2.694342613220215 seconds  

**Observations:**
- NumPy is dramatically faster than Python loops and even faster than naïve C.
- NumPy uses optimized BLAS backends with SIMD vectorization, cache blocking, and multithreading which is absent in Python.
- Most of the heavy computation runs in compiled C/Fortran code.

---

### Q5 ###
### Ans ###
Using the file `demo.c` and optimization flags `-O2` and `-O3`, the computations were carried out with N = 1024, N = 1500, and N = 1800.  
The results are as follows:

Execution Time taken:

#### -O2 (better than -O0) --->
- N = 1024 → 0.850860 seconds  
- N = 1500 → 3.178797 seconds  
- N = 1800 → 6.087003 seconds

#### Using Time Command for N=1024

-real    0m2.575s
-user    0m0.846s
-sys     0m0.010s

#### -O3 (best) --->
- N = 1024 → 0.845917 seconds  
- N = 1500 → 3.123928 seconds  
- N = 1800 → 5.969561 seconds


#### Using Time Command for N=1024

-real    0m2.608s
-user    0m0.835s
-sys     0m0.012s

**Observations:**
- -O2 and -O3 drastically reduce execution time.
- Assembly shows:
  - Loop unrolling
  - Reduced memory loads/stores
  - Better register allocation
  - Possible SIMD instructions
- -O3 gives marginal improvement over -O2 due to aggressive optimization.
- -O3 only uses Power cores while others like naive C, -O2, python uses both Efficiency and Power cores.

---

### Bonus I ###
### Ans ###
Using MIPS and QEMU, the `demo.c` code was cross-compiled for MIPS 32-bit architecture and using -O2 compilation flag.  
The results are as follows:

Execution Time taken: MIPS --->
- N = 1024 → 2.646777 seconds  
- N = 1500 → 9.748211 seconds  
- N = 1800 → 20.506701 seconds


#### Using Time Command for N=1024

-real    0m4.205s
-user    0m2.700s
-sys     0m0.014s

#### Using default compilation flag for N=1024:-

-real    0m10.431s
-user    0m7.683s
-sys     0m0.013s

**Observations:**
- MIPS performance is slower than native x86 due to:
  - Emulation overhead (QEMU)
  - Simpler instruction set
  - Lower IPC

---

## Bonus II — Instruction Count and CPI (perf)

#### Using input N=1024 and `perf stat` command 

| Program+Optimization flags| Instructions | Cycles | CPI |
|--------|-------------|--------|-----|
| C(O0)  | 7.113E+10   | 2.45E+10| 0.344 |
| C(O2)  | 8.54E+09    | 6.138E+09| 0.7187 |
| C(O3)  | 7.55E+09    | 3.8E+09| 0.503 |
| Python | 3.32E+12    | 7.85E+11| 0.236 |
| Numpy  | 9.45E+09    | 2.63E+09 | 0.2787 |
| MIPS   | 1,66E+11    | 5.386E+10| 0.324 |

**Observations:**
- Instruction count decreases with optimization.
- CPI decreases due to better instruction-level parallelism and cache behavior.
- Optimized code shows reduced memory stalls.
- O3 uses only performance cores whereas others use 

---




