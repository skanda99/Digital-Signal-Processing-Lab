
# a = 1, f = 15 Hz

f = 15;
Fs = 120;
dt = 1/Fs;
t = [0:dt:2-dt];

# making a siner of 15 Hz frequency
y = sin(2*pi*f*t);

# taking first 120 samples
DFT1 = fft(y(1:120));
N = length(y(1:120));
L1 = length(DFT1);

k = [0:L1-1];
f1 = Fs/N .* k;

# taking first 130 samples
DFT2 = fft(y(1:130));
N = length(y(1:130));
L2 = length(DFT2);

k = [0:L2-1];
f2 = Fs/N .* k;

# plotting magnitude spectrum
figure();
stem(f1,abs(DFT1)/L1,color='b');
hold();
stem(f2,abs(DFT2)/L2,color='g');
grid();
title('abs(DFT) VS f');
xlabel('Frequency (Hz)');
ylabel('abs(DFT(y(t)))');
legend(['120 samples';'130 samples']);