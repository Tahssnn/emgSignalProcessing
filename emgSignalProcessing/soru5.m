clc
clear all
close all
fs = 1000; 
Ts = 1/fs; 
fu = 50 ;
load('emg1.mat')

figure('name','soru5')

subplot(4,1,1)
plot(e1,'g')
axis([0 10000 -1000 1000])
xlabel('zaman (ms)')
ylabel('genlik (mV)')
title('A) emg1.data')

subplot(4,1,2)
y=lowpass(e1,10,fs);
plot(y)
axis([0 10000 -1000 1000])
xlabel('zaman (ms)')
ylabel('genlik (mV)')
title('B) lowpass')

subplot(4,1,3)
E1 = fft(e1);
axis([0 10000 -1000 1000])
f = linspace(0,fs,length(E1));
plot(f,abs(E1));
title('C)emg1.data fourier');
xlabel('Frekans (Hz)');
ylabel('genlik (mV)')


subplot(4,1,4)
E1 = fft(y);
f = linspace(0,fs,length(E1)); 
plot(f,E1);
title('D) lowpass - fourier');
xlabel('Frekans (Hz)');
ylabel('genlik (mV)')