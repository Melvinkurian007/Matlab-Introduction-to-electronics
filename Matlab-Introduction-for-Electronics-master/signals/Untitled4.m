x=input('enter the sequence');
N=length(x);
for N=1:K;
    X1(N)=0;
    for n=1:K;
        X1(N)=1/N*(X1(K)+x(n)*exp((i*2*pi*(N-1)*(n-1))/K));
    end
end
subplot(423)
stem(real(X))
xlabel('K')
ylabel('magnitude,(X(K)')
title('magnitude plot of X(K)')
