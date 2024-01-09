% Sigma-Delta Modulation Example in Octave

% Define the continuous analog signal
t = linspace(0, 1, 1000);  % Time vector from 0 to 1 second
analog_signal = sin(2 * pi * 5 * t);  % A sinusoidal signal as an example

% Sampling parameters
fs = 1000;  % High sampling frequency for sigma-delta modulation
Ts = 1/fs; % Sampling period

% Sigma-delta modulation parameters
delta = 0.1;  % Quantization step

% Create a high-frequency triangular wave
triangular_wave = sawtooth(2 * pi * 100 * t, 0.5);

% Sigma-delta modulation encoding
n = length(t);
digital_signal = zeros(1, n);
error_integral = 0;

for i = 2:n
    % Compare the input signal to the triangular wave
    error = analog_signal(i) - delta * error_integral;
    
    % Update the error integral
    error_integral = error_integral + error;
    
    % Output a 1 or -1 based on the sign of the error
    if error_integral >= 0
        digital_signal(i) = delta;
    else
        digital_signal(i) = -delta;
    end
end

% Plot the results
figure;

subplot(3,1,1);
plot(t, analog_signal, 'b', 'LineWidth', 2);
title('Analog Signal');
xlabel('Time (s)');
ylabel('Amplitude');
grid on;

subplot(3,1,2);
plot(t, triangular_wave, 'g', 'LineWidth', 2);
title('Triangular Wave');
xlabel('Time (s)');
ylabel('Amplitude');
grid on;

subplot(3,1,3);
stairs(t, digital_signal, 'r', 'LineWidth', 2);
title('Sigma-Delta Modulated Signal');
xlabel('Time (s)');
ylabel('Amplitude');
grid on;

linkaxes;

% Display the encoded signal
disp('Encoded Digital Signal (Sigma-Delta Modulation):');
disp(digital_signal);
