clear all;
close all;
clc


f2=inline('cos(x)');
f1=@(x)(cos(x));
a=0;
b=6;
h=0.0001;
x=0:h:6;
fx1=f1(x);
n=length(x);
s1=zeros(1,n);
I1=zeros(1,n);
iter=0;
s=0;

for i=1:n
 
    if i==1 || i==n
        s1(i)=fx1(i);
    else
        s1(i)=2*fx1(i);
    end

    
   I1(i)=(h/2)*(s+s1(i));
       s=s+s1(i);
end
baseY=zeros(1,length(x));
subplot(2,1,1)
plot(x,f1(x));
hold on
plot(x,baseY);
subplot(2,1,2)
plot(x,I1)
hold on
plot(x,baseY);
