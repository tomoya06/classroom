%%

clc;
close all;
clear;

%%

xn = [0 1 2 3 4 5 6 7];
N = length(xn);
n = 0: (N-1);
k = 0: (N-1);

Xk = xn*exp(-1i*2*pi/N).^(n'*k);
x = (Xk*exp(1i*2*pi/N).^(n'*k))/N;

%%

figure(1);

subplot(2, 2, 1);
stem(n, xn);
title('x(n)');

subplot(2, 2, 2);
stem(n, x);
title('x(n) by IDFT');

subplot(2, 2, 3);
stem(k, abs(Xk));
title('|X(k)|');

subplot(2, 2, 4);
stem(k, angle(Xk));
title('arg|X(k)|');


%%
