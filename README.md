# ES336 Assignment 1 #
## Name: Dhairya Apoorva Amin ##
## Roll no: 24110105 ##

### Q1 ###
### Ans ###
#### Using the file in the demo.c the computations were carried with N=1024, N=1500 and N=1800. ####
#### The results are as follows: ####
#### Execution Time taken: -O0 (default) ---> N=1024 = 3.662090 seconds
####                                         N=1500 = 10.726606 seconds
####                                         N=1800 = 24.359762 seconds

#### Intermediate file: demo.i 
#### Assembly file: demo.s 

### Q2 ###
### Ans ###
Using the coa_py.py file in the demo the computations were carried with N=1024, N=1500 and N=1800.
The results are as follows:
Execution Time taken: Python (for loop)---> N=1024 = 100.42602109999996 seconds
                                         N=1500 = 341.58655573400006 seconds
                                         N=1800 = 611.1124434200001 seconds

### Q4 ###
### Ans ###
Using the coa_numpy.py file in the demo the computations were carried with N=1024, N=1500 and N=1800.
The results are as follows:
Execution Time taken: Python (for loop)---> N=1024 = 0.397075891 seconds
                                         N=1500 = 1.493048 seconds
                                         N=1800 = 2.694342613220215 seconds
### Q5 ###
### Ans ###
Using the file in the demo.c and optimization flags -O2 and -O3, the computations were carried with N=1024, N=1500 and N=1800.
The results are as follows: 
Execution Time taken: -O2 (better than -O0) ---> N=1024 = 0.850860 seconds
                                         N=1500 = 3.178797 seconds
                                         N=1800 = 6.087003 seconds
                          -O3 (best)---> N=1024 = 0.845917 seconds
                                         N=1500 = 3.123928 seconds
                                         N=1800 = 5.969561 seconds

### B ###
### Ans ###
Using mips and qemu we can cross compile the demo.c code into mips 32 bit architecture.
The results are as follows:
Execution Time taken: MIPS: N=1024 = 2.646777 seconds
                            N=1500 = 9.748211 seconds
                            N=1800 = 20.506701 seconds



