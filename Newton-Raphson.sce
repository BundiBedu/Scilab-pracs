clc
str=input('Enter y as a function of x ',"string")//"string tells that input will be a string "
//str='y=exp(-x)-sin(x)'
deff('[y]=f(x)',str)
n=input('Maximum number of iterations= ')
printf ("\t Iteration \t Value of x \n\n")
for j=-5:0.025:5
    if f(j)*f(j+0.025)<0 then
        printf (string(j))
        printf ("A root")
        x(1)=f(j)
        //printf (string(x(1)))
        for i=1:n
            x(i+1)=x(i)-(f(x(i))/numderivative(f,x(i)))
            if abs(f(x(i))-f(x(i+1)))<10^-10 then break
            end
    printf ("\t%d \t\t%10.8f \n",[i x(i+1)])
  
         end
    end
end
//y=(x^3+3*x^2-6*x^2-8)/4
//y=x^3-6*x^2+11*x-6
