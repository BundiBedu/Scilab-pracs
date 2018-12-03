//Gauss-Siedel
clc
A=[15 2 1;2 20 -3;3 -6 25]
b=[18;19;22]
x=0,y=0,z=0
n=input("Enter max. number of iterations ")
for i=1:n
for i=1:n
x=(b(1)-A(1,2)*y-A(1,3)*z)/A(1,1)
y=(b(2)-A(2,1)*x-A(2,3)*z)/A(2,2)
z=(b(3)-A(3,1)*x-A(3,2)*y)/A(3,3)
end
printf ("%d %10.8f %10.8f %10.8f \n",[i x y z])
