%progrsm to plot unit step function both continuous and discrete
clear all
close all
clc
%unit step function(continuous)
t=[-5:.01:5];
for i=1:length(t)
if t(i)>=0
    x(i)=1;
else
    x(i)=0;
end
end
subplot(211)
plot(t,x)

%unit step function(discrete)
n=[-5:5];
for i=1:length(n)
if n(i)>=0
    y(i)=1
else
    y(i)=0
end
end
subplot(212);
stem(n,y);