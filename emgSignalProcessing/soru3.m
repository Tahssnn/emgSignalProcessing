load('emg1.mat')

figure('name','soru3')

subplot(4,1,1)

plot(e1,'b')
axis([0 13000 -1350 1350])
xlabel('zaman - ms') 
ylabel('genlik - mv ')
title('A) 1.Emg Data') 
grid on

subplot(4,1,2)

y=abs(e1);

plot(y,'b')
xlabel('zaman - ms') 
ylabel('genlik - mv ')
title('B) Doğrultulmuş 1.Emg ')
axis([0 13000 -1350 1350])
grid on

subplot(4,1,3)

xlabel('zaman - ms') 
ylabel('genlik - mv ')
title('C)Zarf alınmış hali')
plot(envelope(y,200,'peak'))
a=[];
for i=1:13000
    a=[a 200];
end  
hold on 
plot(a,'g')
xlabel('zaman - ms') 
ylabel('genlik - mv ')
title('C')
axis([0 10000 0 1000])
grid on


subplot(4,1,4)

n = envelope(y,200,'peak');
d=[];
for i=1:13000
    if n(i)>200
        d=[d 1];
    else
        d=[d 0];
    end 
     
end

plot(d)
title('D')
xlabel('zaman - ms') 
ylabel('kontrol işareti ')
axis([0 10000 0 1.5])
grid on
