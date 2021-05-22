load('emg1.mat')
load('emg2.mat')
figure('name','soru3')

y=abs(e1);
n = envelope(y,200,'peak');

subplot(3,1,1)
plot(e1,'b')
hold on
plot(y,'b')
hold on
plot(envelope(y,200,'peak'))
a=[];
for i=1:13000
    a=[a 200];
end  
hold on 
plot(a,'--')

d=[];
for i=1:13000
    if n(i)>200
        d=[d 1200];
    else
        d=[d 0];
    end 
end

hold on
plot(d)

title('A')
xlabel('zaman - ms') 
ylabel('gerilim - mV')
axis([0 13000 0 2000])
grid on

y2=abs(e2);
n2 = envelope(y2,200,'peak');

subplot(3,1,2)
plot(e2,'b')
hold on
plot(y2,'b')
hold on
plot(envelope(y2,200,'peak'))
a=[];
for i=1:13000
    a=[a 200];
end  
hold on 
plot(a,'--')

e=[];
for i=1:13000
    if n2(i)>200
        e=[e 1200];
    else
        e=[e 0];
    end 
end

hold on
plot(e)

title('B')
xlabel('zaman - ms') 
ylabel('gerilim - mV')
axis([0 13000 0 2000])
grid on

subplot(3,1,3)

plot(d)
hold on
plot(-e)
title('C')
xlabel('zaman - ms') 
ylabel('kontrol işareti')
axis([0 13000 -2000 2000])
grid on