//Date : 28/4/2022
//Aim : To find Fast Fourier (forward & reverse) Transform of a Gaussian Function
clc
clear
clf
N=200
t=linspace(-20,20,N);
a=5
deff('y=f(t)','y=exp(-a.*(t.^2))')//gaussian function
A=f(t)
subplot(1,3,1)
plot(t,A);
xlabel('Time----->>>','color','blue','Fontsize','5')
ylabel('y----->>>','color','blue','Fontsize','5')
title('Gaussian function','color','brown','Fontsize','5')
X=abs(fft(A,-1));
subplot(1,3,2)
plot(t,X)
xlabel('Frequency----->>>','color','blue','Fontsize','5')
ylabel('y----->>>','color','blue','Fontsize','5')
title('Fourier transform of Gaussian function ','color','brown','Fontsize','5')
subplot(1,3,3)
plot(t,fftshift(X))//fftshift is inbuilt command 
xlabel('Frequency----->>>','color','blue','Fontsize','5')
ylabel('y----->>>','color','blue','Fontsize','5')
title('Shifted Fourier transform of gaussian function ','color','brown','Fontsize','5')
