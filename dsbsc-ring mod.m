clc ;
clear all;
close all;
t=0:0.01:(4-0.01);
T=10; f=1/T;
a=2*sin(2*pi*f*t)-1.5*cos(4*pi*f*t);
subplot(321);
axis([0 (4-0.01) -4.5 4.5]); hold on;
plot(t,a); xlabel('t-->');
ylabel('m(t)-->');
pulses=[ones(1,10) -ones(1,10)];
pul=repmat(pulses,1,20);
subplot(323)
axis([0 (4-0.01) -4.5 4.5]); hold on;
plot(t,pul); xlabel('t-->');
ylabel('p(t)-->'); subplot(325)
a1=pul.*a;
axis([0 (4-0.01) -4.5 4.5]); hold on;
plot(t,a1); xlabel('t-->');
ylabel('g(t)=m(t)p(t)-->');
%%%%%%%%%%%%%%%%FFT%%%%%%%%% 
s1 =abs(fftshift((fft(a))));
subplot(322);
pt=20;
f=-199:200; %f=-99:100;
%axis([0 (4-0.01) -4.5 4.5]); hold on;
%s1=s1(-99:100);
plot(f,s1);
xlabel('f-->'); 
ylabel('M(f)-->');
s2=fftshift(abs(fft(pul)));
subplot(324);
f=-199:200;
plot(f,s2); 
xlabel('f-->');
ylabel('P(f)-->');
s3=fftshift(abs(fft(a1)));
subplot(326)
f=-199:200;
plot(f,s3); 
xlabel('f-->');
ylabel('G(f)-->');