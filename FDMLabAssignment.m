close all;
clear all;
clc;
Fs = 100; % sampling freq
t = [0:4*Fs+1]'/Fs;
x1 = sin(2*pi*2*t); % signal 1
 z1 = fft(x1);
z1=abs(z1);
x2 = sin(2*pi*10*t); % signal 2
 z2 = fft(x2);
 
z2=abs(z2);

x3= sin(2*pi*20*t);
z3=fft(x3);
z3=abs(z3);
figure;
subplot(6,1,1);
plot(x1); title('signal 1');
xlabel('time');
ylabel('amplitude');
subplot(6,1,2);
plot(x2);
title('signal 2');
xlabel('time');
ylabel('amplitude');
subplot(6,1,3);
plot(x3);
title('signal 3');
xlabel('time');
ylabel('amplitude');
subplot(6,1,4);
plot(z1);
title('Spectrum of signal 1');
xlabel('frequency');
ylabel('magnitude');
subplot(6,1,5);
plot(z2); title('Spectrum of signal 2');
xlabel('frequency')
ylabel('magnitude');
subplot(6,1,6);
plot(z3); title('Spectrum of signal 3');
xlabel('frequency')
ylabel('magnitude');
% frequency multiplexing
z=z1+z2+z3; figure; plot(z);
title('frequency multiplexed signals'); 

