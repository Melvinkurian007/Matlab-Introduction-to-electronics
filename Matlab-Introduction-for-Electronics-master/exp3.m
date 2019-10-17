clc
clear all
%experiment no 3
%Rishabh Baiju
%DCT
x = [1 2 3 4]
N = length(x);
for k = 1:N
    y(k) = 0;
    if (k==1)
        w(k) = 1/sqrt(N);
    else
        w(k) = sqrt(2/N);
    end       
    for n = 1:N
        y(k) = y(k)+x(n)*cos(pi*(2*n-1)*(k-1)/(2*N));
    end
    y(k) = y(k)*w(k);
end
y
y1=dct(x)
subplot(2,2,1)
stem(y1)
ylabel('Amplitude ---->');
xlabel('K ---->')
title('DCT Sequence With Function');
subplot(2,2,2)
stem(y)
ylabel('Amplitude ---->');
xlabel('K ---->');
title('DCT Sequence')


% t = 0:N-1;
% subplot(2,2,2);
% magnitude = abs(y); 
% disp('DCT Sequence = ');
% disp(magnitude);
% stem(t,magnitude);
% ylabel('Amplitude ---->');
% xlabel('K ---->');
% title('DCT Sequence');
% 
%idct
for n = 1:N
    X(n) = 0;
    if (n==1)
        w(n) = 1/sqrt(N);
    else
        w(n) = sqrt(2/N);
    end        
    for k = 1:N
        X(n) = X(n)+w(k)*y(k)*cos(pi*(2*n-1)*(k-1)/(2*N));
    end
end 
X
X1=idct(y)
subplot(2,2,3)
stem(X1)
ylabel('Amplitude ---->');
xlabel('n ---->')
title('IDCT Sequence With Function');
t = 0:N-1;
subplot(2,2,4);
stem(t,X);
disp('IDCT Sequence = ');
disp(X);
ylabel('Amplitude ---->');
xlabel('n ---->');
title('IDCT sequence');



