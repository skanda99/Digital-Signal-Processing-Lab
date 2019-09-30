
% importing the wav file
[y,Fs] = audioread('instru3.wav');

% plotting the spectrogram
figure();
spectrogram(y,blackman(500),10,[],Fs);
title('Instru3');

% Designing the butterworth filter
[N,wn] = buttord([700,850]*2/Fs,[690,950]*2/Fs,10,15);
[B,A] = butter(N,wn);

% filtering the wav file
Y = filter(B,A,y);

audiowrite('filtered_instru3.wav',Y,Fs);

% plotting the spectrogram
figure();
spectrogram(Y,blackman(500),10,[],Fs);
title('Filtered Instru3');