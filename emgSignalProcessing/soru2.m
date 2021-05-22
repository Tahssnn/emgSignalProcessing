load('emg1.mat')

figure('name','soru2')

subplot(2,1,1)
plot(e1,'b')
axis([0 13000 -1350 1350])
xlabel('zaman - ms') 
ylabel('genlik - mv ')
title('A) 1.Emg Data') 
grid on

subplot(2,1,2)
fs = 1000;
Ts = 1/fs;
fu = 50 ;
E1 = fft(e1); 
f = linspace(0,fs,length(E1));
plot(f,abs(E1),'g');
xlabel('Frekans (Hz)');
ylabel('genlik - mv ')
title('B) Fourier');
grid on

