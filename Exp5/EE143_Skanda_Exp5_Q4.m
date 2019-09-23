
% a = 3

[y, Fs] = audioread('Opera.wav');

% plotting opera spectrogram 
figure();
spectrogram(y,hamming(1000),10,[],Fs);
title('Opera');

N = length(y);
DFT = fft(y);
k = 0:N-1;
f = Fs/N .* k;

% plotting magnitude spectrum
figure();
plot(f,abs(DFT));
title('abs(DFT) VS Frequency');
xlabel('Frequency(Hz)');
ylabel('abs(DFT)');