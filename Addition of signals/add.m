t = 0:0.001:1000;

a = cos((t/7) + (pi/4));
b = cos((t/11) + (pi/30));
c = a + b;

figure; % Ensure a new figure is created

subplot(3, 1, 1);
plot(t, a);
title('Signal a');

subplot(3, 1, 2);
plot(t, b);
title('Signal b');

subplot(3, 1, 3);
plot(t, c);
title('Sum of Signals (c)');
