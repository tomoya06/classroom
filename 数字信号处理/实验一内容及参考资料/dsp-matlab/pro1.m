%%

clear;
close all;
clc;

%%

nn1 = 0: 20;
f1 = power(0.8, nn1);

nn2 = 0: 10;
f2 = heaviside(nn2+1);

y = conv(f1, f2);

%%

l = 0: length(y)-1;

figure(1);
stem(l, y, '.');
xlabel('n');
ylabel('y(n)');

%%