% Signal Analysis using MATLAB
% Author: Roshan Jena
% Description: Time and Frequency Domain Analysis of a Signal

clc;
clear;
close all;

% Parameters
Fs = 1000;           % Sampling frequency (Hz)
t = 0:1/Fs:1;        % Time vector
f = 50;              % Signal frequency (Hz)

% Signal
x = sin(2*pi*f*t);

% Time Domain Plot
figure;
plot(t, x, 'LineWidth', 1.5);
xlabel('Time (seconds)');
ylabel('Amplitude');
title('Time Domain Signal');
grid on;

% Frequency Domain (FFT)
X = fft(x);
N = length(X);
f_axis = (0:N-1)*(Fs/N);

figure;
plot(f_axis, abs(X), 'LineWidth', 1.5);
xlabel('Frequency (Hz)');
ylabel('Magnitude');
title('Frequency Domain Signal (FFT)');
xlim([0 200]);
grid on;

