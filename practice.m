clear all;
close all;
clc

syms x;
f=exp(2*x.^2+3*x);
df=diff(f)
in=int(f)