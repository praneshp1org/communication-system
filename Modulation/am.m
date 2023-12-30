% Time sampling where Step Size = 0.001
t = 0:0.001:1;

% Frequency of input or modulating signal
fm = 10;

% Frequency of output or modulated signal
fc = 100;

% Input or Modulating Signal
input_signal = sin(2 * pi * fm * t);
subplot(5, 1, 1);
plot(t, input_signal, 'k'); % 'k' gives black color plot
xlabel('Time');
ylabel('Amplitude');
title('Input or Modulating Signal');

% Carrier Signal
carrier_signal = sin(2 * pi * fc * t);
subplot(5, 1, 2);
plot(t, carrier_signal, 'r'); % 'r' gives red color plot
xlabel('Time');
ylabel('Amplitude');
title('Carrier Signal');

% Output or Amplitude Modulated Signal (Under Modulated)
m = 0.5; % modulation factor (m < 1)
under_modulated_signal = (1 + m * sin(2 * pi * fm * t)) .* sin(2 * pi * fc * t);
subplot(5, 1, 3);
plot(t, under_modulated_signal, 'b'); % 'b' gives blue color plot
xlabel('Time');
ylabel('Amplitude');
title('Under Modulated Output Signal (m < 1)');

% Output or Amplitude Modulated Signal (Over Modulated)
m = 1.5; % modulation factor (m < 1)
over_modulated_signal = (1 + m * sin(2 * pi * fm * t)) .* sin(2 * pi * fc * t);
subplot(5, 1, 4);
plot(t, over_modulated_signal, 'r'); % 'b' gives blue color plot
xlabel('Time');
ylabel('Amplitude');
title('Over Modulated Output Signal (m > 1)');

% Output or Amplitude Modulated Signal (Over Modulated)
m = 1; % modulation factor (m < 1)
over_modulated_signal = (1 + m * sin(2 * pi * fm * t)) .* sin(2 * pi * fc * t);
subplot(5, 1, 5);
plot(t, over_modulated_signal, 'g'); % 'b' gives blue color plot
xlabel('Time');
ylabel('Amplitude');
title('Perfectly Modulated Output Signal (m = 1)');
