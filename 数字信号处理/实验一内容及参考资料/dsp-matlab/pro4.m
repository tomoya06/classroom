%%

clc;
close all;
clear;

%%

B = [1, -1];
A = [1, -2.5, 1];

[Hk, w] = freqz(B, A, 'whole');

%%

figure(1);

subplot(1, 2, 1);
zplane(B, A);

subplot(1, 2, 2);
plot(w/pi, abs(Hk));
xlabel('\omega/\pi');

figure(2);

stepz(B, A, 20);

%%