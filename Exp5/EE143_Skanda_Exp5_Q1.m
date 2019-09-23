
% a = 3

Fs = 100;
dt = 1/Fs;

t = 0:dt:10-dt;

% defining frequency variation
F = inline('1.2*t+8','t');

x = sin(2*pi*F(t).*t);

% plotting chirp signal
figure();
plot(t,x);
title('Chirp signal');
xlabel('time(s)');
ylabel('x(t)');


DFT = fft(x);
N = length(DFT);
k = 0:N-1;
f = Fs/N .* k;

% plotting magnitude spectrum
figure();
plot(f,abs(DFT));
title('abs(DFT) VS frequency');
xlabel('Frequency(Hz)');
ylabel('abs(DFT)');

% plotting spectrogram
figure();
spectrogram(x,hamming(100),10,[],Fs);
title('Chirp Signal');