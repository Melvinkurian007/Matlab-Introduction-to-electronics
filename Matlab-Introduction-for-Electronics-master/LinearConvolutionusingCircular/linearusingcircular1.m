 clc;
clear;
x=input('Enter the sequence x(n) ');
L=length(x);
h=input('Enter the sequence h(n) ');
M=length(h);

N=L+M-1;
X=[x,zeros(1,N-L)];
H=[h,zeros(1,N-M)];
Y=[zeros(1,N)];

for n=1:N
    for m=1:N
        if(n-m<0)
            k=N+n-m+1;
        else
            k=n-m+1;
        end
        Y(n)=Y(n)+(X(k)*H(m));
    end
end

disp(Y);
t=0:N-1;
subplot(2,2,1);
stem(t,X);
title('x(n)');
xlabel('n');
ylabel('amplitude');
subplot(2,2,2);
stem(t,H);
title('h(n)');
xlabel('n');
ylabel('amplitude');
subplot(2,2,3);
stem(t,Y);
title('y(n)');
xlabel('n');
ylabel('amplitude');
