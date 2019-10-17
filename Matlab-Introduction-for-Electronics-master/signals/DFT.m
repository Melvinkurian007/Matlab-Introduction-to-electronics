%exp no:2
%Nikhil Francis Giji
%ECE B 
%Roll no:11
%Matlab program to calculate DFT
clear all
close all
clc
x=input('enter the sequence');
N=length(x);
for  K=1:N;
     X(K)=0;
    for n=1:N;
        X(K)=X(K)+x(n)*exp((-i*2*pi*(K-1)*(n-1))/N);
    end
end
subplot(421)
stem(abs(X))
xlabel('K')
ylabel('magnitude,(X(K)')
title('magnitude plot of X(K)')
subplot(422)
stem(angle(X))


title('phase plot of X(K)')
%MATLAB program to calculate IDFT
x=input('enter the sequence');
N=length(x);




        


