f=10;  
fp=100;  
Td=1;  
n=Td/(1/fp);
% t=[0:1/fp:Td];  
t=linspace(0,Td,n);
x=sin(2*pi*f*t); 
figure 
plot(t,x,'.-b'); 