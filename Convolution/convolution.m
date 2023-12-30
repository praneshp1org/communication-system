% Define a simple continuous signal
t = linspace(0, 2, 100);  % Time vector from 0 to 2 seconds
signal = sin(2 * pi * t); % A sine wave as an example

% Define a simple continuous kernel
kernel = exp(-t); % An exponentially decaying function as an example

% Perform convolution
result = conv(signal, kernel) * (t(2) - t(1)); % Scaling by the time step

% Plot the continuous signal
subplot(3, 1, 1);
plot(t, signal, 'r', 'LineWidth', 2);
title('Continuous Signal');

% Plot the continuous kernel
subplot(3, 1, 2);
plot(t, kernel, 'b', 'LineWidth', 2);
title('Continuous Kernel');

% Plot the result of convolution
conv_time = linspace(0, 4, length(result)); % Adjust time vector for convolution result
subplot(3, 1, 3);
plot(conv_time, result, 'g', 'LineWidth', 2);
title('Result of Convolution');
