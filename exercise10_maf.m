% Exercise 10 – Moving Average FIR Filters
% Creates TWO figures:
%   Fig 1: 5-point MAF (magnitude + pole-zero)
%   Fig 2: 9-point MAF (magnitude + pole-zero)

clear; clc; close all;

% Coefficients
b1 = [1 1 1 1 1];           % 5-point MAF (FIR)
a1 = 1;

b2 = [1 1 1 1 1 1 1 1 1];   % 9-point MAF (FIR)
a2 = 1;

% Frequency responses
N = 1024;
[H1, w1] = freqz(b1, a1, N);
[H2, w2] = freqz(b2, a2, N);

% Zeros/Poles
[z1, p1, k1] = tf2zpk(b1, a1);
[z2, p2, k2] = tf2zpk(b2, a2);

% -------- Figure 1: 5-point --------
figure('Name','5-point MAF','NumberTitle','off');

subplot(1,2,1);
plot(w1/pi, abs(H1), 'LineWidth', 1.3);
grid on;
title('Magnitude |H_5(\omega)|');
xlabel('Normalized Frequency (\times\pi rad/sample)');
ylabel('Magnitude');

subplot(1,2,2);
zplane(z1, p1);
title('Pole–Zero (5-point MAF)');

% -------- Figure 2: 9-point --------
figure('Name','9-point MAF','NumberTitle','off');

subplot(1,2,1);
plot(w2/pi, abs(H2), 'LineWidth', 1.3);
grid on;
title('Magnitude |H_9(\omega)|');
xlabel('Normalized Frequency (\times\pi rad/sample)');
ylabel('Magnitude');

subplot(1,2,2);
zplane(z2, p2);
title('Pole–Zero (9-point MAF)');

% Optional: save figures
saveas(1, 'results_5point.png');
saveas(2, 'results_9point.png');
