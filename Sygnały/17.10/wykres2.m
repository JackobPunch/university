clc
clear
close all

T=4;
N=50;
nt=1000;
t=linspace(0,T,nt);
X0=0.5;
x=0;
x=x+X0;
A=X0;
E=T/2-T*X0.^2;

for n=1:N
    Xn=((-1).^n-1)/(-j*2*pi*n);
    A(n+1)=2*j*Xn;
    E(n+1)=E(n)-T*2*abs(Xn)^2
    x=x+Xn*(exp(j*2*pi*n*t/T)-exp(-j*2*pi*n*t/T));
    plot(t,x)
    pause(0.1)
end

figure()
stem(0:N,A)
figure()
plot(E)