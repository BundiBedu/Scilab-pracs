//clc
A=[15 2 1;2 20 -3;3 -6 25]
b=[18;19;22]
x=0,y=0,z=0
xt=1,yt=1,zt=1
n=input("Enter max. number of iterations ")
for i=1:n
x=(b(1)-A(1,2)*y-A(1,3)*z)/A(1,1)
y=(b(2)-A(2,1)*x-A(2,3)*z)/A(2,2)
z=(b(3)-A(3,1)*x-A(3,2)*y)/A(3,3)
if ((abs(xt-x)<10^-10) & (abs(yt-y)<10^-10) &(abs(zt-z)<10^-10)) then break
    end
printf ("%d %10.8f %10.8f %10.8f \n",[i x y z])
xt=x,yt=y,zt=z
end
//Note usse of and (&) condition and the temp vars xt,yt,zt instead of for loops
