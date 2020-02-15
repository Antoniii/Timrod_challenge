from time import time
from pi import *

N = 768 
  
start_all = time()

print("Atan")
start = time()
my_pi = pi_machin(N)
print("Pi = {}".format(str(my_pi)))
print("Time {} ms".format(float(round((time()-start)*1e6)/1e3)))
  
  
print("\nBBP")
start = time()
my_pi = bbp(N)
print("Pi = {}".format(str(my_pi)))
print("Time {} ms".format(float(round((time()-start)*1e6)/1e3)))

  
print("\nBellard")
start = time()
my_pi = bellard(N)
print("Pi = {}".format(str(my_pi)))
print("Time {} ms".format(float(round((time()-start)*1e6)/1e3)))
  
  
print("\nChudnovsky")
start = time()
my_pi = chudnovsky(N/14)
print("Pi = {}".format(str(my_pi)))
print("Time {} ms".format(float(round((time()-start)*1e6)/1e3)))
  
  
print("\nChudnovsky2")
start = time()
my_pi = chudnovsky2(N/14)
print("Pi = {}".format(str(my_pi)))
print("Time {} ms".format(float(round((time()-start)*1e6)/1e3)))

print("\nAll Time {} millisecond, {} microseconds, and {} nanoseconds".format(int(round((time()-start_all)*1e6)/1e3),
  	int((float(round((time()-start_all)*1e6)/1e3)-int(round((time()-start_all)*1e6)/1e3))*1000),
  	abs(int((float(round((time()-start_all)*1e9)/1e3)-int(round((time()-start_all)*1e9)/1e3))*100))))