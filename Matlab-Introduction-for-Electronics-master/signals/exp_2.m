clear all;
close all;
clc;
A=2;
f=10;
T=(1/f);
t=[0:T/20:10*T];
x=A*sin(2*pi*f*t);
subplot(211);
plot(t,x)
xlabel('time in sec');
ylabel('amplitude');
title('plot of sine signal x=A*sin(2*pi*f*t');
A=2;
f=10;
T=(1/f);
t=[0:T/20:10*T];
x=A*cos(2*pi*f*t);
subplot(212)
plot(t,x)
xlabel('time in sec');
ylabel('amplitude');
title('plot of cosine signal x=A*cos(2*pi*f*t');
