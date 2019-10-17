                     %  MANU JOY S5 EC-B #3

clc
clear all
close all

x=input("ENTER THE SEQUENCE");
N=length(x);
for k=1:N
    C(k)=0; 
    for n=1:N
        if(k==1)
        C(k)=C(k)+sqrt(1/N)*x(n)*cos(pi*(2*(n-1)+1)*(k-1)/(2*N));
        else
            C(k)=C(k)+sqrt(2/N)*x(n)*cos(pi*(2*(n-1)+1)*(k-1)/(2*N));
    end
    end
end

subplot(2,2,1)
stem(C)
xlabel("k")
ylabel("C(k)")
title("DCT OF x(n)")
subplot(2,2,2)
stem(abs(C))
xlabel("k")
ylabel("MAGNITUDE OF (C(k))")
title("MAGNITUDE PLOT OF C(k)")
subplot(2,2,3)
stem(angle(C))
xlabel("k")
ylabel("PHASE OF k")
title("PHASE PLOT OF C(k)")
   

D=C
N=length(D);
for n=1:N
    d(n)=0; 
    for k=1:N
        if(n==1)
        d(n)=d(n)+sqrt(1/N)*C(k)*cos(pi*(2*(n-1)+1)*(k-1)/(2*N));
        else
           d(n)=d(n)+sqrt(1/N)*C(k)*cos(pi*(2*(n-1)+1)*(k-1)/(2*N));
    end
    end
end

subplot(2,2,4)
stem((d))
xlabel("n")
ylabel("x(n)")
title("IDCT OF C(k)")
