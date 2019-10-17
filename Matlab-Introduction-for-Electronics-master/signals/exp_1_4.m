%progrsm to plot unit impulse function both continuous and discrete
clear all
close all
clc
%unit impulse function(continuous)
t=[-5:.01:5];
for i=1:length(t)
if t(i)==0
    i1(i)=1;
else
    i1(i)=0;
end
end
subplot(211)
plot(t,i1)

%unit impulse function(discrete)
n=[-5:5];
for i=1:length(n)
if n(i)==0
    i2(i)=1
else
    i2(i)=0
end
end
subplot(212);
stem(n,i2);