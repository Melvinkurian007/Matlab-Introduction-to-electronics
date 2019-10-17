%progrsm to plot unit ramp function both continuous and discrete
clear all
close all
clc
%unit ramp function(continuous)
t=[-5:.01:5];
for i=1:length(t)
if t(i)>=0
    r(i)=t(i);
else
    r(i)=0;
end
end
subplot(211)
plot(t,r)

%unit ramp function(discrete)
n=[-5:5];
for i=1:length(n)
if n(i)>=0
    r1(i)=n(i);
else
    r1(i)=0;
end
end
subplot(212);
stem(n,r1);