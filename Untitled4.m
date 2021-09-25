clear all;
close all;
clc;
f = @(x) (exp(x)) ;
a = 1.6 ;
b = 3.8 ;
n= 100;
h = 0.2 ;
s= 0.5 * (f(a)+ f (b));
for i = 1: n-1
    s= s+f(a+i*h);
    i
end
I = h*s