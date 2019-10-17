%MATLAB program to calculate IDFT
x1=input('enter the sequence');
N=length(X);
for n=1:N;
    x1(n)=0;
    for K=1:N;
        x1(n)=(x1(n)+(1/N)*(X(K)*exp((i*2*pi*(K-1)*(n-1))/N);
    end
end
subplot(423)
stem(real(X1)
xlabel('N')
ylabel('X(N)')
title('magnitude plot of X(K)')

