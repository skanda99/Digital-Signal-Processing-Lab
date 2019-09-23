
% a = 3
[y, Fs] = audioread('instru3.wav');

dt = 1/Fs;
N = length(y);
t = 0:dt:N/Fs-dt;

% plotting instru3 spectrogram
figure();
spectrogram(y,hamming(100),10,[],Fs);
title('instru3');

DFT = fft(y);
k = 0:N-1;
f = Fs/N .* k;

% plotting magnitude spectrum
figure();
plot(f,abs(DFT));
title('abs(DFT) VS Frequency');
xlabel('Frequency(Hz)');
ylabel('abs(DFT)');