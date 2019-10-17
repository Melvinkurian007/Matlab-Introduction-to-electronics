%Nikhil Francis Giji
%ECE B
%Roll No:11
clc;
close all;
clear all;
x=input("enter the sequence:")
h=input("enter the sequence:")
M=length(x);
N=length(h);
x1=[x,zeros(1,M-1)]
h1=[h,zeros(1,N-1)]
for n=1:M+N-1;
    y(n)=0;
    for k=1:n;
        y(n)=y(n)+x1(k)*h1(n-k+1)
    end
end
conv(x,h)
