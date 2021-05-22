load('emg1.mat')
load('emg2.mat')

figure('name','soru1') 

subplot(2,1,1)
plot(e1,'b')
axis([0 13000 -1350 1350])
xlabel('zaman - ms') 
ylabel('genlik - mv ')
title('A) 1.Emg Data') 
grid on

subplot(2,1,2)
plot(e2,'b')
xlabel('zaman - ms')
ylabel('genlik - mv ') 
title('B) 2.Emg Data')
axis([0 13000 -1350 1350])
grid on

