% Phase Modulation Example in Octave

% Parameters
fc = 1000;        % Carrier frequency in Hertz
fs = 10000;       % Sampling frequency in Hertz
t = 0:1/fs:1;      % Time vector

% Modulating signal (message signal)
Am = 1;           % Amplitude of the modulating signal
fm = 2;           % Frequency of the modulating signal
m = Am * sin(2*pi*fm*t);  % Modulating signal

% Phase modulation
kf = 50;          % Modulation index (frequency sensitivity)
phi = 2*pi*fc*t + kf * cumsum(m) / fs;  % Phase modulation

% Create a single figure with subplots
figure;

% Plot the modulating signal
subplot(3,1,1);
plot(t, m);
title('Modulating Signal');
xlabel('Time (s)');
ylabel('Amplitude');

% Plot the carrier signal
subplot(3,1,2);
c = cos(2*pi*fc*t);
plot(t, c);
title('Carrier Signal');
xlabel('Time (s)');
ylabel('Amplitude');

% Plot the phase-modulated signal
subplot(3,1,3);
pm_signal = cos(phi);
plot(t, pm_signal);
title('Phase-Modulated Signal');
xlabel('Time (s)');
ylabel('Amplitude');

% Display the spectrograms
figure;
subplot(2,1,1);
spectrogram(m, hann(256), 128, 1024, fs, 'yaxis');
title('Spectrogram of Modulating Signal');

subplot(2,1,2);
spectrogram(pm_signal, hann(256), 128, 1024, fs, 'yaxis');
title('Spectrogram of Phase-Modulated Signal');
