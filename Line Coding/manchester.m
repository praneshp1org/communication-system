x = [1 1 0 0 0 0 1];
T = length(x);
n = 100;
N = 2 * n * T;
dt = T / N;
t = 0:dt:T;
y = zeros(1, length(t));

for i = 0:1:(T-1)
    if x(i + 1) == 1
        y(i * 2 * n + 1:(2 * i + 1) * n) = -1;
        y((i * 2 + 1) * n + 1:(2 * i + 2) * n) = 1;
    else
        y(i * 2 * n + 1:(2 * i + 1) * n) = 1;
        y((i * 2 + 1) * n + 1:(2 * i + 2) * n) = -1;
    end
end

figure;
plot(t, y, 'LineWidth', 2, 'Color', 'red');
grid on;
xlabel('Time');
ylabel('Amplitude');
title('Manchester Coding');
