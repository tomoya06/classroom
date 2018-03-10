%%

clc;
close all;
clear;

%%

B = [4, -1, 7, -2];
A = [1, -1.5, 0.5, -0.75];

%%
k
Hz1 = filt(B, A)

[sos, G] = tf2sos(B, A)

[c, b, a] = tf2par(B, A)

%%