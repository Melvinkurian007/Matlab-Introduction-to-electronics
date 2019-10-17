clc
clear all
x=input("enter the sequence")
N=length(x)
for K=1:N
    C(K)=0;
   for n=1:N
      
     C(K)=C(K)+x(n)*cos((pi*(K-1)*((2*(n-1))+1))/(2*N))
   
   end 
     if(K==1)
            C(K)=C(K)*sqrt(1/N)
        else 
          C(K)=C(K)*sqrt(2/N)  
        end 
         
   
end
C
C1=dct(x)
subplot(2,2,1)
stem(C)

subplot(2,2,2)
stem(C1)

for n=1:N
    x1(n)=0;
    for K=1:N
        if(K==1)
            a(K)=sqrt(1/N)
        else 
            a(K)=sqrt(2/N)
        end
        x1(n)= x1(n)+C(K)*a(K)*cos((pi*(K-1)*((2*(n-1))+1))/(2*N))
    end
end
x1
z=idct(C)
subplot(2,2,3)
stem(x1)
xlabel
subplot(2,2,4)
stem(z)
