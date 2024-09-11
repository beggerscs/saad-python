Q.1
print("khansaad.46")
c1=44+8j
c2=22-27j
c1+c2
print("Addition of two complex number is: ",c1+c2)
print("subtraction of two complex number is: ",c1-c2)
print("Multiplication of two complex number is: ",c1*c2)
print("Division of two complex number is: ",c1/c2)
t=3+4j
print(t)
m=t.conjugate()
print("conjugate of t is: ",m)

Q.2
print("khanfahad.32")
import numpy as np
x=np.array([5,6,7])
y=np.array([1,2,3])
print(x)
print(y)
print("Enter values of a and b")
a=int(input())
b=int(input())
c=a*x+b*y
d=np.dot(x,y)
print("au + bv vector is ", c)
print("dot product is ", d)

Q.3
import sys
import matplotlib.pyplot as plt

s = {1+1j}
s1 = {2+3j, 4+5j}

print("Menu:")
print("1. Addition of complex numbers")
print("2. Conjugate of complex numbers")
print("3. Plotting complex numbers")
print("4. Translating complex numbers")
print("5. Rotating complex numbers by a degree (e.g., 90, 180, 270)")
print("6. Scaling a complex number by a float number")
print("7. Exit")

c = "yes"
while c.lower() == "yes":
    choice = int(input("Enter the operation you want to perform: "))

    if choice == 1:
        a = complex(input("Enter the 1st number: "))
        b = complex(input("Enter the 2nd number: "))
        add = a + b
        print("Addition:", add)
        
    elif choice == 2:
        n = complex(input("Enter the complex number to find its conjugate: "))
        print("Conjugate:", n.conjugate())
        
    elif choice == 3:
        X = [x.real for x in s1]
        Y = [x.imag for x in s1]
        plt.plot(X, Y, "ro")
        plt.axis([-7, +7, -7, +7])
        plt.show()
        
    elif choice == 4:
        t = complex(input("Enter the complex number for translation: "))
        plot = [x + t for x in s1]
        print("Translated complex numbers:", plot)
        X = [x.real for x in plot]
        Y = [x.imag for x in plot]
        plt.plot(X, Y, "ro")
        plt.axis([-6, +6, -6, +6])
        plt.show()
        
    elif choice == 5:
        d = int(input("Enter the degree to rotate (e.g., 90, 180, 270): "))
        if d == 90:
            plot = [x * 1j for x in s]
        elif d == 180:
            plot = [x * -1 for x in s]
        elif d == 270:
            plot = [x * -1j for x in s]
        else:
            print("Invalid degree input.")
            continue
        print("Rotated complex numbers:", plot)
        X = [x.real for x in plot]
        Y = [x.imag for x in plot]
        plt.plot(X, Y, "ro")
        plt.axis([-3, +3, -3, +3])
        plt.show()
        
    elif choice == 6:
        s_factor = float(input("Enter the scaling factor: "))
        plot = {x * s_factor for x in s}
        print("Scaled complex numbers:", plot)
        X = [x.real for x in plot]
        Y = [x.imag for x in plot]
        plt.plot(X, Y, "ro")
        plt.axis([-3, +3, -3, +3])
        plt.show()
        
    elif choice == 7:
        sys.exit()
        
    else:
        print("Incorrect input")
    
    c = input("Do you want to continue? (yes/no): ")

Q.4.A
print("khmfahad.32")
import numpy as np
A=np.array([[2,4,3,5,6,8],[1,2,3,4,5,6],[6,7,8,9,2,5],[2,4,6,8,1,9],[1,3,5,7,9,4],[2,5,1,6,7,3]])
print("Rank of matrix: ",np.linalg.matrix_rank(A))
print("Determinant of matrix: ",np.linalg.det(A))
print("Square of matrix: ",np.linalg.matrix_power(A,2))
print("cube of matrix: ",np.linalg.matrix_power(A,3))
print("inverse of matrix: ",np.linalg.inv(A))

Q4.B
print("khmfahad.32")
import numpy as np
A=np.array([[4,8,10],[2,4,8],[1,2,4]])
print("Rank of matrix: ",np.linalg.matrix_rank(A))
print("Determinant of matrix: ",np.linalg.det(A))
print("Square of matrix: ",np.linalg.matrix_power(A,2))
print("cube of matrix: ",np.linalg.matrix_power(A,3))
print("inverse of matrix: ",np.linalg.inv(A))

print("khmfahad.32")
import numpy as np
A=np.array([[2,4],[1,2]])
print("Rank of matrix: ",np.linalg.matrix_rank(A))
print("Determinant of matrix: ",np.linalg.det(A))
print("Square of matrix: ",np.linalg.matrix_power(A,2))
print("cube of matrix: ",np.linalg.matrix_power(A,3))
print("inverse of matrix: ",np.linalg.inv(A))

Q5
print("khanfahad.32")
X=[[1,2,3],[4,5,6],[7,8,9]]
Y=[[9,8,7],[6,5,4],[3,2,1]]
result=[[0,0,0],[0,0,0],[0,0,0]]

for i in range(len(X)):
    for j in range(len(X[0])):
        result[i][j]=X[i][j]+Y[i][j]
for r in result:
    print(r)

print("khanfahad.32")
X=[[1,2,3],[4,5,6],[7,8,9]]
Y=[[9,8,7],[6,5,4],[3,2,1]]
result=[[0,0,0],[0,0,0],[0,0,0]]

for i in range(len(X)):
    for j in range(len(X[0])):
        result[i][j]=X[i][j]-Y[i][j]
for r in result:
    print(r)

print("khanfahad.32")
X=[[1,2,3],[4,5,6],[7,8,9]]
Y=[[9,8,7],[6,5,4],[3,2,1]]
result=[[0,0,0],[0,0,0],[0,0,0]]

for i in range(len(X)):
    for j in range(len(X[0])):
        result[i][j]=X[i][j]*Y[i][j]
for r in result:
    print(r)

print("khanfahad.32")
import numpy as np
M=np.array([[1,2,1],[2,1,0],[3,0,2]])
print(("The matrix M is: ",M))
a=np.linalg.det(M)
print("determinant of M is: ",a)
Minv=np.linalg.inv(M)
print("Inverse of M is: ",Minv)

Q6
print("khanfahad.32")
print("add")
X=[[1,2,3,4,5,6],[7,8,9,10,11,12],[13,14,15,16,17,18],[1,2,3,4,5,6],[7,8,9,10,11,12],[13,14,15,16,17,18]]
Y=[[18,17,16,15,14,13],[12,11,10,9,8,7],[6,5,4,3,2,1],[1,2,3,4,5,6],[7,8,9,10,11,12],[13,14,15,16,17,18]]
result=[[0,0,0,0,0,0],[0,0,0,0,0,0],[0,0,0,0,0,0],[0,0,0,0,0,0],[0,0,0,0,0,0],[0,0,0,0,0,0]]
for i in range(len(X)):
    for j in range(len(X[0])):
        result[i][j]=X[i][j]+Y[i][j]
for r in result:
    print(r)

print("khanfahad.32")
print("sub")
X=[[1,2,3,4,5,6],[7,8,9,10,11,12],[13,14,15,16,17,18],[1,2,3,4,5,6],[7,8,9,10,11,12],[13,14,15,16,17,18]]
Y=[[18,17,16,15,14,13],[12,11,10,9,8,7],[6,5,4,3,2,1],[1,2,3,4,5,6],[7,8,9,10,11,12],[13,14,15,16,17,18]]
result=[[0,0,0,0,0,0],[0,0,0,0,0,0],[0,0,0,0,0,0],[0,0,0,0,0,0],[0,0,0,0,0,0],[0,0,0,0,0,0]]
for i in range(len(X)):
    for j in range(len(X[0])):
        result[i][j]=X[i][j]-Y[i][j]
for r in result:
    print(r)

print("khanfahad.32")
print("multi")
X=[[1,2,3,4,5,6],[7,8,9,10,11,12],[13,14,15,16,17,18],[1,2,3,4,5,6],[7,8,9,10,11,12],[13,14,15,16,17,18]]
Y=[[18,17,16,15,14,13],[12,11,10,9,8,7],[6,5,4,3,2,1],[1,2,3,4,5,6],[7,8,9,10,11,12],[13,14,15,16,17,18]]
result=[[0,0,0,0,0,0],[0,0,0,0,0,0],[0,0,0,0,0,0],[0,0,0,0,0,0],[0,0,0,0,0,0],[0,0,0,0,0,0]]
for i in range(len(X)):
    for j in range(len(X[0])):
        result[i][j]=X[i][j]*Y[i][j]
for r in result:
    print(r)

Q.7
print("khanfahad.32")
import numpy as np
A=np.mat([[1,2,3],[4,2,6],[7,8,9]])
print("A\n",A)
print("print eigen values",np.linalg.eig(A))

print("khanfahad.32")
import numpy as np
A=np.mat([[1,2,3,4],[5,6,7,8],[9,10,11,12],[13,14,15,16]])
print("A\n",A)
print("print eigen values",np.linalg.eig(A))

Q.8
import matplotlib.pyplot as plt
print("khanfahad.32")
x = [1, 2, 3, 4, 5]
y = [1, 4, 9, 16, 25]
fig,ax = plt.subplots()
ax.plot(x, y)
ax.set_title('Simple Plot')
ax.set_xlabel('x')
ax.set_ylabel('y')
plt.show()

Q.9
import matplotlib.pyplot as plt
print("khanfahad.32")
x = [1, 2, 3, 4, 5]
y1 = [1, 4, 9, 16, 25]
y2 = [2, 5, 10, 17, 26]
plt.plot(x, y1, label='Line 1')
plt.plot(x, y2, label='Line 2')
plt.title('Multiple Lines')
plt.xlabel('X')
plt.ylabel('Y')
plt.legend()
plt.show()

import matplotlib.pyplot as plt
print("khanfahad.32")
x = [1, 2, 3, 4, 5] 
y = [1, 4, 9,16, 25]
plt.scatter(x, y)
plt.title('Scatter Plot')
plt.xlabel('X')
plt.ylabel('Y')
plt.show()

import matplotlib.pyplot as plt
print("khanfahad.32")
x = ['A', 'B', 'C', 'D', 'E']
y = [10, 20, 30, 40, 50]
plt.bar(x, y)
plt.title('Bar Chart')
plt.xlabel('X')
plt.ylabel('Y')
plt.show()

import matplotlib.pyplot as plt
import numpy as np
print("khanfahad.32")
data = np.random.randn(1000)
plt.hist(data, bins=30)
plt.title('Histogram')
plt.xlabel('Value')
plt.ylabel('Frequency')
plt.show()

import matplotlib.pyplot as plt
print("khanfahad.32")
labels = ['A', 'B', 'C', 'D']
sizes = [15, 30, 45, 10]
plt.pie(sizes, labels=labels)
plt.title('Pie Chart')
plt.show()()

import matplotlib.pyplot as plt
print("khanfahad.32")
x = [1, 2, 3, 4, 5]
y1 = [1, 4, 9, 16, 25]
y2 = [2, 5, 10, 17, 26]
fig, axs = plt.subplots(2)
axs[0].plot(x, y1)
axs[0].set_title('Line 1')
axs[1].plot(x, y2)
axs[1].set_title('Line 2')
plt.show()




