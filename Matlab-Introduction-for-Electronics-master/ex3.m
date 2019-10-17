
clc
clear all
x=input("enter the sequence 0-(N-1)");
N=length(x);
for K=1:N
    X(K)=0;
    for n=1:N
        X(K)=X(K)+x(n)*exp(-j*2*pi*(K-1)*(n-1)/N)
    end
end
subplot(2,2,1)
stem(x)
xlabel("k")
ylabel("x(k)")
title ('plot')
subplot(2,2,2)
stem(abs(X))
xlabel('K')
ylabel('magnitude of X(K)')
title("magnitude plot of X(K)")
subplot(2,2,3)
stem(angle(X));
xlabel("K")
ylabel("phase of K")
title("phase plot of X(K)")
X1=X;
%N=length(X1);
for n=1:N
    x1(n)=0;
    for K=1:N
        x1(n)= x1(n)+(X1(K)*exp(j*2 *pi*(K-1)*(n-1)/N))/N
    end
end
subplot(2,2,3)
stem(real(x1))
subplot(2,2,4)
xlabel("x1(n)")
ylabel("n")
title("IDFT of X(k)")
end



    


