% recorded audio
[y, Fs] = audioread('name.wav');

% converting ampling frequency to 4000 Hz
N = length(y);
y = y(1:4:N);
Fs = Fs/4;

% plotting spectrogram
figure();
spectrogram(y,blackman(1250),10,[],Fs);
title('Name');