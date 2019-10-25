
% loading the audio file
[x,Fs] = audioread('instru3.wav');

% plotting the spectrogram of original audio
figure();
spectrogram(x,blackman(500),10,[],Fs);
title('Original Audio');

% setting the cut-off frequencies for band-pass filter
f1 = 695;
f2 = 900;

% desinging the filter
N = 300;
B = fir1(N,[f1*2/Fs,f2*2/Fs],blackman(N+1));
A = 1;

% filtering the signal
y = filter(B,A,x);

audiowrite('instru_.wav',y,Fs);

% plotting the spectrogram of processed audio
figure();
spectrogram(y,blackman(500),10,[],Fs);
title('Filtered Audio');
