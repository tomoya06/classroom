%%

clc;
clear;
close all;

%% p1 = 0.2

z = [0]'; k = 1;
n = (0: 500)*pi/500;
p1 = [0.2]';

[b1, a1] = zp2tf(z, p1, k);
[h1, w1] = freqz(b1, a1, n);

%% p2 = 0.5

p2 = [0.5]';

[b2, a2] = zp2tf(z, p2, k);
[h2, w2] = freqz(b2, a2, n);

%% p3 = 0.8

p3 = [0.8]';

[b3, a3] = zp2tf(z, p3, k);
[h3, w3] = freqz(b3, a3, n);

%%

figure(1);

subplot(3,2,1);
zplane(b1, a1);
subplot(3,2,2);
plot(w1/pi, abs(h1));
xlabel('\omega/\pi');
ylabel('|H(e^j^\omega)|');

subplot(3,2,3);
zplane(b2, a2);
subplot(3,2,4);
plot(w2/pi, abs(h2));
xlabel('\omega/\pi');
ylabel('|H(e^j^\omega)|');

subplot(3,2,5);
zplane(b3, a3);
subplot(3,2,6);
plot(w3/pi, abs(h3));
xlabel('\omega/\pi');
ylabel('|H(e^j^\omega)|');


%%

