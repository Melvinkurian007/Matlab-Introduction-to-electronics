%program to plot DCT
x=input("enter the sequence:");
N=length(x)
for k=1:N
    C(k)=0;
    for n=1:N
        if(k==1)
            C(k)=C(k)+sqrt(1/N)*x(n)*cos((pi*((2*(n-1))+1)*(k-1))/(2*N));
        else
            C(k)=C(k)+sqrt(2/N)*x(n)*cos((pi*((2*(n-1))+1)*(k-1))/(2*N));
        end
    end
end
C
C1=dct(x)
subplot(2,2,1);   
stem(C);
title('input sequence');
%magnitude
subplot(2,2,2)
stem(abs(x))
xlabel('k');
ylabel('magnitude,[x(k)]');
title('magnitude of X(K)');
stem(y)
