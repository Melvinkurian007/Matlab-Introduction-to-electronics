X1=X;
for n=1:N;
    x1(n)=0;
for K=1:N
    x1(n)=x1(n)+(X1(K)*exp(i*2*pi*(K-1)*n-1)/N)/N
    end 
end 
subplot(224)
stem(real(x1))
Xlabel(x1(n))