clear all;
close all;
clc

f1=inline('sqrt(8.01*x)');
f2=inline('1.5*x')
a=0;
b=3.56;
h=(b-a)/19;
x=a:h:b;
fx1=f1(x);
fx2=f2(x);
n=length(x);
s1=0;
s2=0;
for i=1:n
    if (i==1 || i==n)
        s1=s1+fx1(i);
        s2=s2+fx2(i);
    elseif (mod(i,2)==0)
        s1=s1+4*fx1(i);
        s2=s2+4*fx2(i);
    else
        s1=s1+2*fx1(i);
        s2=s2+2*fx2(i);
    end
end
I1=(h/3)*s1;
I2=(h/3)*s2;
I=I1-I2

