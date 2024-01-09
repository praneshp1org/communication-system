F1=10;
F2=5;
A=3;%Amplitude
t=0:0.001:1;
x=A.*sin(2*pi*F1*t);%Carrier Sine wave
u=A/2.*square(2*pi*F2*t)+(A/2);%Square wave message
v=x.*u;
subplot(3,1,1);
plot(t,x);
xlabel('Time');
ylabel('Amplitude');
title('Carrier');
grid on;
subplot(3,1,2);
plot(t,u);
xlabel('Time');
ylabel('Amplitude');
title('Square Pulses');
grid on;subplot(3,1,3);
plot(t,v);
xlabel('Time');
ylabel('Amplitude');
title('ASK Signal');
grid on;