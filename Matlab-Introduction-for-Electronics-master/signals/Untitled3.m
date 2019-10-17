%MATLAB program to calculate IDFT
x=input('enter the sequence');
N=length(x);
for K=1:N;
    X(K)=0;
    for n=1:N;
        X(K)=1/N*(X(K)+x(n)*exp((i*2*pi*(K-1)*(n-1))/N));
    end
end
subplot(423)
stem(real(X))
xlabel('K')
ylabel('magnitude,(X(K)')
title('magnitude plot of X(K)')
subplot(424)
stem(angle(X))