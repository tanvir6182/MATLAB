clear all;
close all;
clc

a=1.6;
b=3.8;
h=0.8;
f1=inline('exp(x)');
x=a:h:b;
f_x=f1(x);

n=length(x);
s1=0;
iter=0;
for i=1:n
    if i==1 || i==n
        s1=s1+f_x(i);
    else
        s1=s1+2*f_x(i);
    end
    iter=iter+1;
end
I=h/2*s1;
disp(I)
