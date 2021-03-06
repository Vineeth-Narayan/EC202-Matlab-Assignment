clc; clear all;
close all;
t=[0:0.001:1];
f1=5;
m1=sin(2*pi*f1*t);
m2=hilbert(m1);
subplot(4,2,[1,2]);
plot(t,m1);
title('message');
f2=100;
c1=sin(2*pi*f2*t);
c2=cos(2*pi*f2*t);
subplot(4,2,[3,4]);
plot(t,c1);
title('carrier');
subplot(4,2,[5,6]);
r1=m1.*c1;
r2=m2.*c2;
s=r1-r2;
plot(t,s); 
title('lower side band');
subplot(4,2,[7,8]);
l=r1+r2;
plot(t,l);
title('upper side band');
figure;

s1=s.*c1;
[b,a]=butter(5,0.1);
s2=filter(b,a,s1);
subplot(4,2,[1,2]);
plot(t,s2);
title('demodulation'); 