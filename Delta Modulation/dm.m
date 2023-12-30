% Delta Modulation Example in Octave

% Define the continuous analog signal
t = linspace(0, 1, 1000);  % Time vector from 0 to 1 second
analog_signal = sin(2 * pi * 5 * t);  % A sinusoidal signal as an example

% Sampling parameters
fs = 100;  % Sampling frequency
Ts = 1/fs; % Sampling period

% Delta modulation parameters
delta = 0.1;  % Step size or quantization step

% Delta modulation encoding
n = length(t);
digital_signal = zeros(1, n);
for i = 2:n
    % Delta modulation encoding
    if analog_signal(i) >= digital_signal(i-1)
        digital_signal(i) = digital_signal(i-1) + delta;
    else
        digital_signal(i) = digital_signal(i-1) - delta;
    end
end

% Plot the results
figure;

subplot(2,1,1);
plot(t, analog_signal, 'b', 'LineWidth', 2);
title('Analog Signal');
xlabel('Time (s)');
ylabel('Amplitude');
grid on;

subplot(2,1,2);
stairs(t, digital_signal, 'r', 'LineWidth', 2);
title('Delta Modulated Signal');
xlabel('Time (s)');
ylabel('Amplitude');
grid on;

linkaxes;

% Display the encoded signal
disp('Encoded Digital Signal:');
disp(digital_signal);
