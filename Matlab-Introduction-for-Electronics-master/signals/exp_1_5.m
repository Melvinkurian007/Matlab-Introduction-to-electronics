%Name:Nikhil Francis Giji
%Roll No:7
%Class:S5 ECE-A
%progrsm to plot unit step function both continuous and discrete
clear all
close all
clc
%unit step function(continuous)
t=[-5:.01:5];
for i=1:length(t)
if t(i)>=0;
    x(i)=1;
else
    x(i)=0;
end
end
subplot(521)
plot(t,x)
xlabel('time in sec')
ylabel('amplitude')
title(' unit step function (continuous)')

%unit step function(discrete)
n=[-5:5];
for i=1:length(n)
if n(i)>=0;
    y(i)=1;
else
    y(i)=0;
end
end
subplot(522);
stem(n,y);
xlabel('time index n')
ylabel('amplitude')
title(' unit step function (discrete)')

%progrsm to plot unit ramp function both continuous and discrete

%unit ramp function(continuous)
t=[-5:.01:5];
for i=1:length(t)
if t(i)>=0;
    r(i)=t(i);
else
    r(i)=0;
end
end
subplot( 523)
plot(t,r)
xlabel('time in sec')
ylabel('amplitude')
title(' unit ramp function (continuous)')


%unit ramp function(discrete)
n=[-5:5];
for i=1:length(n);
if n(i)>=0
    r1(i)=n(i);
else
    r1(i)=0;
end
end
subplot(524);
stem(n,r1);
xlabel('time index n')
ylabel('amplitude')
title(' unit ramp function (discrete)')
%progrsm to plot unit impulse function both continuous and discrete

%unit impulse function(continuous)
t=[-5:.01:5];
for i=1:length(t)
if t(i)==0;
    r(i)=1;
else
    r(i)=0;
end
end
subplot( 525)
plot(t,r)
xlabel('time in sec')
ylabel('amplitude')
title(' unit impulse function (continuous)')

%unit impulse function(discrete)
n=[-5:5];
for i=1:length(n);
if n(i)==0;
    i2(i)=1;
else
    i2(i)=0;
end
end
subplot(526);
stem(n,i2);
xlabel('time index n')
ylabel('amplitude')
title(' unit impulse function (discrete)')

%progrsm to plot continuous  sine wave with period N=8 samples
a=2;
n=[0:40];
subplot(528);
x1=a*sin((pi*n)/4);
stem(n,x1);
xlabel('time index n')
ylabel('amplitude')
title('discrete sine wave with period N=8 samples')
%progrsm to plot continuous cosine wave with period N=8 samples
a=2;
n=[0:40];
subplot(5,2,10);
x=a*cos((pi*n)/4);
stem(n,x);
xlabel('time index n')
ylabel('amplitude')
title('discrete cos wave with period N=8 samples')

%progrsm to plot sine signal x=A*sin(2*pi*f*t')
A=2;
f=10;
T=(1/f);
t=[0:T/20:10*T];
x=A*sin(2*pi*f*t);
subplot(527);
plot(t,x)
xlabel('time in sec');
ylabel('amplitude');
title('plot of sine signal x=A*sin(2*pi*f*t)');
%progrsm to plot cose signal x=A*cos(2*pi*f*t')
A=2;
f=10;
T=(1/f);
t=[0:T/20:10*T];
x=A*cos(2*pi*f*t);
subplot(5,2,9)
plot(t,x)
xlabel('time in sec');
ylabel('amplitude');
title('plot of cosine signal x=A*cos(2*pi*f*t)');