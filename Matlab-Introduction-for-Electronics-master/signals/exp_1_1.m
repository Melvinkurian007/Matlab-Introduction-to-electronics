
clear all;
close all;
clc;
a=2;
n=[0:40];
subplot(211);
x=a*sin((pi*n)/4);
stem(n,x);
xlabel('time in sec')
ylabel('amplitude')
title('discrete sine wave with period N=8 samples')
a=2;
n=[0:40];
subplot(212);
x=a*cos((pi*n)/4);
stem(n,x);
xlabel('time in sec')
ylabel('amplitude')
title('discrete cos wave with period N=8 samples')