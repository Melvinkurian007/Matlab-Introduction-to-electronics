x=A*cos(2*pi*f*t)
close all;
clc;
A=2;
f=1000;
T=(1/f);
t=[0:T/20:10*T];
x=A*cos(2*pi*f*t);
plot(x)
xlabel('time in sec');
ylabel('amplitude');
title('plot of sinosuidal signal x=A*cos(2*pi*f*t)');
