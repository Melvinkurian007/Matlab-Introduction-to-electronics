%Name:Alan Sigi
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
subplot(321)
plot(t,x)
xlabel('time in sec')
ylabel('amplitude')
title(' unit step function (continuous)')
%unit ramp function(continuous)
t=[-5:.01:5];
for i=1:length(t)
if t(i)>=0;
    r(i)=t(i);
else
    r(i)=0;
end
end
subplot( 322)
plot(t,r)
xlabel('time in sec')
ylabel('amplitude')
title(' unit ramp function (continuous)')

%unit impulse function(continuous)
t=[-5:.01:5];
for i=1:length(t)
if t(i)==0;
    r(i)=1;
else
    r(i)=0;
end
end
subplot( 323)
plot(t,r)
xlabel('time in sec')
ylabel('amplitude')
title(' unit impulse function (continuous)')

%progrsm to plot sine signal x=A*sin(2*pi*f*t')
A=2;
f=10;
T=(1/f);
t=[0:T/20:10*T];
x=A*sin(2*pi*f*t);
subplot(324);
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
subplot(325)
plot(t,x)
xlabel('time in sec');
ylabel('amplitude');
title('plot of cosine signal x=A*cos(2*pi*f*t)');
