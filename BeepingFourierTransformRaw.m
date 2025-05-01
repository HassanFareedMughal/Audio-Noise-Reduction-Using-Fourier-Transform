clear
clc
[DataIn, fs] = audioread('D:\UNIVERSITY\6th Semester\SS Lab\MyProject\group_talking.wav');
[N, P] = size(DataIn);
ts = 1/fs;
t = (0:N-1)*ts;    % <- Add this line
tmax = (N-1)*ts;
plot(t, DataIn)
figure;            % <- open a new figure for frequency graph
f = fs/2*linspace(-1,1,N);
z = fftshift(fft(DataIn));
plot(f, abs(z));
xlabel('Frequency');
ylabel('Power');
title('Frequency & Power graph of un-filtered audio');
