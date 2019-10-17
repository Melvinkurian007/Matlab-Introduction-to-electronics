%Name:Alan Sigi
%Roll No:7
%Class:S5 EC A
clear all
close all
clc
%unit step function(discrete)
n=[-5:5];
for i=1:length(n)
if n(i)>=0;
    y(i)=1;
else
    y(i)=0;
end
end
subplot(321);
stem(n,y);
xlabel('time index n')
ylabel('amplitude')
title(' unit step function (discrete)')


%unit ramp function(discrete)
n=[-5:5];
for i=1:length(n);
if n(i)>=0
    r1(i)=n(i);
else
    r1(i)=0;
end
end
subplot(322);
stem(n,r1);
xlabel('time index n')
ylabel('amplitude')
title(' unit ramp function (discrete)')


%unit impulse function(discrete)
n=[-5:5];
for i=1:length(n);
if n(i)==0;
    i2(i)=1;
else
    i2(i)=0;
end
end
subplot(323);
stem(n,i2);
xlabel('time index n')
ylabel('amplitude')
title(' unit impulse function (discrete)')

%progrsm to plot continuous  sine wave with period N=8 samples
a=2;
n=[0:40];
subplot(324);
x1=a*sin((pi*n)/4);
stem(n,x1);
xlabel('time index n')
ylabel('amplitude')
title('discrete sine wave with period N=8 samples')

%progrsm to plot continuous cosine wave with period N=8 samples
a=2;
n=[0:40];
subplot(325);
x=a*cos((pi*n)/4);
stem(n,x);
xlabel('time index n')
ylabel('amplitude')
title('discrete cos wave with period N=8 samples')

