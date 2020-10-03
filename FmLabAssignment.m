clc; 
clear all; 
close all;
t=[0:0.001:4];
f1=0.5
m=sin(2*pi*f1*t);
subplot(4,2,[1,2]);
plot(t,m);
title('message');
f2=10;
c=sin(2*pi*f2*t);
subplot(4,2,[3,4]);
plot(t,c);
title('carrier');
mf=20;
s=sin((2*pi*f2*t)+(mf*sin(2*pi*f1*t)))
subplot(4,2,[5,6]);
plot(t,s); 
title('pm');
