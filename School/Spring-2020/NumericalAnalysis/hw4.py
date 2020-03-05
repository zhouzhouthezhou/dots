import math
import numpy as np

ans = ((10-3*math.sin(12)-math.cos(12))*math.exp(4)-9)/80

def f(x):
    return (math.sin(6*x)**2)*math.exp(4*x)

def f4(x):
    return -9936*math.exp(x)*math.cos(12*x)-3432*math.exp(x)*math.sin(12*x)+math.exp(x)*(math.sin(6*x))**2

print("-----------------------")
for i in [10,20,50,100,1000]:
    simp = 0
    x = np.linspace(start=0, stop=1, num=i)
    h = 1/i
    for j in range(0,i):
        if j == 0 or j == i-1:
            simp = simp + f(x[j])
        elif j % 2 == 0:
            simp = simp + 4 * f(x[j])
        else:
            simp = simp + 2 * f(x[j])
    print(i)
    print('Approx:', (h/3)*simp)
    print('Error: ', -((h**5)/90)*(i/2)*f4(1))
    print("-----------------------")


