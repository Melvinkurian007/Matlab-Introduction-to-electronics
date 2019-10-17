
clear all;
close all;
clc;
a=4;
f=100;
T=(1/f);
t=[0:T/20:10*T];
x=(a*sin(100*pi*t))+(a*sin(200*pi*t));
plot(t,x);
xlabel('time in sec')
ylabel('amplitude')
title('sum of two signals')
