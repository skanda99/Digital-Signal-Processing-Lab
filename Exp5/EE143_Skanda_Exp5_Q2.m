
% a = 3

Fs = 100;

% defining frequency variation
F = inline('1.2*t+8','t');

x = sin(2*pi*F(t).*t);

% plotting spectrogram 
figure();
spectrogram(x,hamming(100),10,[],Fs);
title('Chirp Signal - Hamming(100)');

figure();
spectrogram(x,hanning(100),10,[],Fs);
title('Chirp Signal - Hanning(100)');

figure();
spectrogram(x,blackman(100),10,[],Fs);
title('Chirp Signal - Blackman(100)');

figure();
spectrogram(x,hamming(150),10,[],Fs);
title('Chirp Signal - Hamming(150)');

figure();
spectrogram(x,hamming(200),10,[],Fs);
title('Chirp Signal - Hamming(200)');

figure();
spectrogram(x,hanning(150),10,[],Fs);
title('Chirp Signal - Hanning(150)');

figure();
spectrogram(x,hanning(200),10,[],Fs);
title('Chirp Signal - Hanning(200)');

figure();
spectrogram(x,blackman(150),10,[],Fs);
title('Chirp Signal - Blackman(150)');

figure();
spectrogram(x,blackman(200),10,[],Fs);
title('Chirp Signal - Blackman(200)');