clear
clc
[DataIn, fs] = audioread('D:\UNIVERSITY\6th Semester\SS Lab\MyProject\group_talking_filtered.wav');
[N, P] = size(DataIn);
ts = 1/fs;
tmax = (N-1)*ts;
t = 0:ts:tmax;    % <- Add this line
plot(t, DataIn)
figure;            % <- open a new figure for frequency graph
f = fs/2*linspace(-1,1,N);
z = fftshift(fft(DataIn));
plot(f, abs(z));
xlabel('Frequency');
ylabel('Power');
title('Frequency & Power graph of un-filtered audio');
