import math, times, strformat

proc pi_machin(): float64 =
 return 4.0*(4.0*arctan(1.0/5.0) - arctan(1.0/239.0))

proc gauss(): float64 =
 return 4*(12*arctan(1.0/18.0) + 8*arctan(1.0/57.0) - 5*arctan(1.0/239.0))

proc bellard(n: float64): float64 =
 var pi: float64 = 0.0
 var k: float64 = 0
 while k < n:
  pi += (pow(-1.0,k)/pow(1024.0,k))*(256.0/(10.0*k+1) + 1.0/(10.0*k+9.0) - 64.0/(10.0*k+3.0) - 32.0/(4.0*k+1.0) - 4.0/(10.0*k+5.0) - 4.0/(10.0*k+7.0) - 1.0/(4.0*k+3.0))
  k += 1
 pi = pi * 1.0/pow(2.0,6.0)
 return pi

# Bailey-Borwein-Plouffe formula
proc bbp(n: float64): float64 =
 var pi: float64 = 0.0
 var k: float64 = 0.0
 while k < n:
  pi += pow(16.0,-k)*((4.0/(8.0*k+1))-(2.0/(8.0*k+4.0))-(1.0/(8.0*k+5.0))-(1.0/(8.0*k+6.0)))
  k += 1
 return pi

proc chudnovsky(n: float64): float64 =
 var pi: float64 = 0.0
 var k: float64 = 0.0
 while k < n:
  pi += (pow(-1.0,k))*((fac((6*k).int32).float64)/pow((fac(k.int32).float64),3)*(fac((3*k).int32).float64)* (13591409.0+545140134.0*k)/pow(640320.0,(3.0*k)))
  k += 1
 pi = pi * pow(10005.0, 0.5)/4270934400.0
 pi = pow(pi,-1.0)
 return pi

proc chudnovsky2(n: float64): float64 =
    var pi: float64 = 13591409.0
    var ak: float64 = 1.0
    var k: float64 = 1.0
    var val, d: float64
    while k < n:
        ak *= -((6.0*k-5.0)*(2.0*k-1.0)*(6.0*k-1.0))/(k*k*k*26680.0*640320.0*640320.0)

        val = ak*(13591409.0 + 545140134.0*k)
        
        #d = ((6.0*k-5.0)*(2.0*k-1.0)*(6.0*k-1.0))/(k*k*k*26680.0*640320.0*640320.0)
        
        pi += val
        k += 1.0
    pi = pi * pow(10005.0,0.5)/4270934400.0
    pi = pow(pi,-1.0)
    return pi

echo("System const: ", fmt"{PI:1.32f}")
let now1 = now()
#echo pi_machin()
echo fmt"{pi_machin():1.32f}"
echo fmt"{gauss():1.32f}"
echo fmt"{bellard(1000):1.32f}"
echo fmt"{bbp(1000):1.32f}"
echo fmt"{chudnovsky(4):1.32f}"
echo fmt"{chudnovsky2(42):1.32f}"
let now2 = now()
echo("All Time = ", now2-now1)