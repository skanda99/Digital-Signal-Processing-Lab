
# a = 1, f = 60 Hz, ans = after every 8 samples, it will be same

f = 15;
Fs = 120;
dt = 1/Fs;
t = [0:dt:2-dt];

# making siner of frequency 12 Hz
y = sin(2*pi*f*t);

# taking first 120 samples
DFT1 = fft(y(1:120));
N = length(y(1:120));
L1 = length(DFT1);

k = [0:L1-1];
f1 = Fs/N .* k;

# taking first 128 samples
DFT2 = fft(y(1:8));
N = length(y(1:8));
L2 = length(DFT2);

k = [0:L2-1];
f2 = Fs/N .* k;

# plotting first magnitude spectrum of first 120 and 128 samples 
figure();

subplot(2,1,1);
stem(f1,abs(DFT1)/L1,color='b');
grid();
title('abs(DFT) VS Frequency - 120 samples');
xlabel('Frequency (Hz)');
ylabel('abs(DFT(y(t)))');

subplot(2,1,2);
stem(f2,abs(DFT2)/L2,color='g');
grid();
title('abs(DFT) VS Frequency - 128 samples');
xlabel('Frequency (Hz)');
ylabel('abs(DFT(y(t)))');