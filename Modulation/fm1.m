% Time sampling where Step Size = 0.001
t = 0:0.001:1;

% Frequency of input or modulating signal
fm = 10;

% Frequency of output or modulated signal
fc = 100;

% Modulation index for frequency modulation
delta_f = 50;

% Input or Modulating Signal
input_signal = sin(2 * pi * fm * t);
subplot(5, 1, 1);
plot(t, input_signal, 'k'); % 'k' gives black color plot
xlabel('Time');
ylabel('Amplitude');
title('Input or Modulating Signal');

% Carrier Signal for Frequency Modulation
carrier_signal = sin(2 * pi * fc * t + delta_f * cumsum(input_signal));
subplot(5, 1, 2);
plot(t, carrier_signal, 'r'); % 'r' gives red color plot
xlabel('Time');
ylabel('Amplitude');
title('Frequency Modulated Carrier Signal');

% Output or Frequency Modulated Signal (Under Modulated)
m = 0.5; % modulation index (m < 1)
under_modulated_signal = sin(2 * pi * fc * t + m * cumsum(input_signal));
subplot(5, 1, 3);
plot(t, under_modulated_signal, 'b'); % 'b' gives blue color plot
xlabel('Time');
ylabel('Amplitude');
title('Under Modulated Output Signal (m < 1)');

% Output or Frequency Modulated Signal (Over Modulated)
m = 1.5; % modulation index (m > 1)
over_modulated_signal = sin(2 * pi * fc * t + m * cumsum(input_signal));
subplot(5, 1, 4);
plot(t, over_modulated_signal, 'r'); % 'r' gives red color plot
xlabel('Time');
ylabel('Amplitude');
title('Over Modulated Output Signal (m > 1)');

% Output or Perfectly Modulated Signal (m = 1)
m = 1; % modulation index (m = 1)
perfectly_modulated_signal = sin(2 * pi * fc * t + m * cumsum(input_signal));
subplot(5, 1, 5);
plot(t, perfectly_modulated_signal, 'g'); % 'g' gives green color plot
xlabel('Time');
ylabel('Amplitude');
title('Perfectly Modulated Output Signal (m = 1)');
